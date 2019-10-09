using System;
using System.Collections.Generic;
using System.Data;
using System.Data.Entity;
using System.Linq;
using System.Net;
using System.Web;
using System.Web.Mvc;
using WebApplication.Models;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication.Controllers
{
    public class Beneficiarios1Controller : Controller
    {
        private BancoEntities1 db = new BancoEntities1();

        // GET: Beneficiarios
        public ActionResult Index()
        {
            try
            {
                String numeroCuenta = Request.Params["numCuenta"]; //Se obtiene el numero de cuenta de la vista
                string cnnString = "Data Source = MARIA; Initial Catalog = Banco; Integrated Security = True"; //Ajustarlo a tu string
                SqlConnection sqlcon = new SqlConnection(cnnString);
                String pname = "banco_dbo_consultarBeneficiariosCuenta";
                sqlcon.Open();
                SqlCommand com = new SqlCommand(pname, sqlcon);
                com.CommandType = CommandType.StoredProcedure;

                com.Parameters.AddWithValue("@numeroCuenta", numeroCuenta);
                com.Parameters.Add("@retValue", System.Data.SqlDbType.Int).Direction = System.Data.ParameterDirection.ReturnValue; //parametro para obtener lo que retorna el SP(Id del cliente)

                com.ExecuteNonQuery();
                int idCuentaAhorro = (int)com.Parameters["@retValue"].Value; //se obtiene el resultado del SP(ID de cuenta ahorro a la que están asociados varios beneficiaros)
                sqlcon.Close();
                var beneficiario = db.Beneficiario.Include(b => b.CuentaAhorro).Include(b => b.TipoDocumentoId).Include(b => b.TipoParentesco);
                return View(beneficiario.Where(x => x.IdCuentaAhorro == idCuentaAhorro).ToList());
            }
            catch
            {
                var beneficiario = db.Beneficiario.Include(b => b.CuentaAhorro).Include(b => b.TipoDocumentoId).Include(b => b.TipoParentesco);
                return View(beneficiario.ToList());
            }
        }
        // GET: Beneficiarios1/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Beneficiario beneficiario = db.Beneficiario.Find(id);
            if (beneficiario == null)
            {
                return HttpNotFound();
            }
            return View(beneficiario);
        }

        // GET: Beneficiarios1/Create
        public ActionResult Create()
        {
            ViewBag.IdCuentaAhorro = new SelectList(db.CuentaAhorro, "ID", "NumeroCuenta");
            ViewBag.IdTipoDocumentoId = new SelectList(db.TipoDocumentoId, "ID", "Nombre");
            ViewBag.IdTipoParentesco = new SelectList(db.TipoParentesco, "ID", "Nombre");


            return View();
        }

        // POST: Beneficiarios1/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,IdTipoDocumentoId,IdTipoParentesco,IdCuentaAhorro,DocumentoId,Nombre,Porcentaje,Activo,FechaNacimiento,FechaDesactivo,Email,Telefono")] Beneficiario beneficiario)
        {
            if (ModelState.IsValid)
            {
                //db.Beneficiario.Add(beneficiario); el que generó MVC automáticamente 
                //db.banco_dbo_agregarBeneficiario(beneficiario.IdTipoDocumentoId, beneficiario.IdTipoParentesco, beneficiario.IdCuentaAhorro, beneficiario.DocumentoId, beneficiario.Nombre, beneficiario.Porcentaje, beneficiario.Activo, beneficiario.FechaNacimiento, beneficiario.NumeroDocumentoId, beneficiario.Email, beneficiario.Telefono);

                String constring = "Data Source = MARIA; Initial Catalog = Banco; Integrated Security = True";
                SqlConnection sqlcon = new SqlConnection(constring);
                String pname = "banco_dbo_agregarBeneficiario";
                sqlcon.Open();
                SqlCommand com = new SqlCommand(pname, sqlcon);
                com.CommandType = CommandType.StoredProcedure;

                //Parámetros

                com.Parameters.AddWithValue("@IdTipoDocumentoId", beneficiario.IdTipoDocumentoId);
                com.Parameters.AddWithValue("@parentesco", beneficiario.IdTipoParentesco);
                com.Parameters.AddWithValue("@NumeroCuenta", beneficiario.IdCuentaAhorro);
                com.Parameters.AddWithValue("@DocumentoId", beneficiario.DocumentoId);
                com.Parameters.AddWithValue("@Nombre", beneficiario.Nombre);
                com.Parameters.AddWithValue("@Porcentaje", beneficiario.Porcentaje);
                com.Parameters.AddWithValue("@Activo", beneficiario.Activo);
                com.Parameters.AddWithValue("@FechaNacimiento", beneficiario.FechaNacimiento);
                com.Parameters.AddWithValue("@Email", beneficiario.Email);
                com.Parameters.AddWithValue("@Telefono", beneficiario.Telefono);


                com.ExecuteScalar();
                sqlcon.Close();

                return RedirectToAction("Index");
            }

            ViewBag.IdCuentaAhorro = new SelectList(db.CuentaAhorro, "ID", "NumeroCuenta", beneficiario.IdCuentaAhorro);
            ViewBag.IdTipoDocumentoId = new SelectList(db.TipoDocumentoId, "ID", "Nombre", beneficiario.IdTipoDocumentoId);
            ViewBag.IdTipoParentesco = new SelectList(db.TipoParentesco, "ID", "Nombre", beneficiario.IdTipoParentesco);
            return View(beneficiario);
        }

        // GET: Beneficiarios1/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Beneficiario beneficiario = db.Beneficiario.Find(id);
            if (beneficiario == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdCuentaAhorro = new SelectList(db.CuentaAhorro, "ID", "NumeroCuenta", beneficiario.IdCuentaAhorro);
            ViewBag.IdTipoDocumentoId = new SelectList(db.TipoDocumentoId, "ID", "Nombre", beneficiario.IdTipoDocumentoId);
            ViewBag.IdTipoParentesco = new SelectList(db.TipoParentesco, "ID", "Nombre", beneficiario.IdTipoParentesco);
            return View(beneficiario);
        }

        // POST: Beneficiarios1/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,IdTipoDocumentoId,IdTipoParentesco,IdCuentaAhorro,DocumentoId,Nombre,Porcentaje,Activo,FechaNacimiento,FechaDesactivo,Email,Telefono")] Beneficiario beneficiario)
        {


            if (ModelState.IsValid)
            {
                //db.Entry(beneficiario).State = EntityState.Modified;

                String constring = "Data Source = MARIA; Initial Catalog = Banco; Integrated Security = True";
                SqlConnection sqlcon = new SqlConnection(constring);
                //conexión

                //Actualiza el nombre
                String pname = "banco_dbo_actualizarNombreBeneficiario";
                sqlcon.Open();
                SqlCommand com = new SqlCommand(pname, sqlcon);
                com.CommandType = CommandType.StoredProcedure;
                com.Parameters.AddWithValue("@NuevoNombre", beneficiario.Nombre);
                com.Parameters.AddWithValue("Id", beneficiario.ID);
                com.ExecuteScalar();
                sqlcon.Close();



                String pname1 = "banco_dbo_actualizarDocumentoIdentificacionBeneficiario";
                sqlcon.Open();
                SqlCommand com1 = new SqlCommand(pname1, sqlcon);
                com1.CommandType = CommandType.StoredProcedure;
                com1.Parameters.AddWithValue("@NuevoNumeroDocumentoId", beneficiario.DocumentoId);
                com1.Parameters.AddWithValue("@Id", beneficiario.ID);
                com1.ExecuteScalar();
                sqlcon.Close();

                String pname2 = "banco_dbo_actualizarEmailBeneficiario";
                sqlcon.Open();
                SqlCommand com2 = new SqlCommand(pname2, sqlcon);
                com2.CommandType = CommandType.StoredProcedure;
                com2.Parameters.AddWithValue("@NuevoEmail", beneficiario.Email);
                com2.Parameters.AddWithValue("@Id", beneficiario.ID);
                com2.ExecuteScalar();
                sqlcon.Close();

                String pname3 = "banco_dbo_actualizarFechaNacimientoBeneficiario";
                sqlcon.Open();
                SqlCommand com3 = new SqlCommand(pname3, sqlcon);
                com3.CommandType = CommandType.StoredProcedure;
                com3.Parameters.AddWithValue("@NuevaFechaNacimiento", beneficiario.FechaNacimiento);
                com3.Parameters.AddWithValue("@Id", beneficiario.ID);
                com3.ExecuteScalar();
                sqlcon.Close();

                String pname4 = "banco_dbo_actualizarParentescoBeneficiario";
                sqlcon.Open();
                SqlCommand com4 = new SqlCommand(pname4, sqlcon);
                com4.CommandType = CommandType.StoredProcedure;
                com4.Parameters.AddWithValue("@NuevoParentesco", beneficiario.IdTipoParentesco);
                com4.Parameters.AddWithValue("@Id", beneficiario.ID);
                com4.ExecuteScalar();
                sqlcon.Close();

                String pname5 = "banco_dbo_actualizarPorcentajeBeneficiario";
                sqlcon.Open();
                SqlCommand com5 = new SqlCommand(pname5, sqlcon);
                com5.CommandType = CommandType.StoredProcedure;
                com5.Parameters.AddWithValue("@NuevoPorcentaje", beneficiario.Porcentaje);
                com5.Parameters.AddWithValue("@IdCuentaAhorro", beneficiario.IdCuentaAhorro);
                com5.Parameters.AddWithValue("@Id", beneficiario.ID);
                com5.ExecuteScalar();
                sqlcon.Close();

                String pname6 = "banco_dbo_actualizarTelefonoBeneficiario";
                sqlcon.Open();
                SqlCommand com6 = new SqlCommand(pname6, sqlcon);
                com6.CommandType = CommandType.StoredProcedure;
                com6.Parameters.AddWithValue("@NuevoTelefono", beneficiario.Telefono);
                com6.Parameters.AddWithValue("@Id", beneficiario.ID);
                com6.ExecuteScalar();
                sqlcon.Close();

                // db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdCuentaAhorro = new SelectList(db.CuentaAhorro, "ID", "NumeroCuenta", beneficiario.IdCuentaAhorro);
            ViewBag.IdTipoDocumentoId = new SelectList(db.TipoDocumentoId, "ID", "Nombre", beneficiario.IdTipoDocumentoId);
            ViewBag.IdTipoParentesco = new SelectList(db.TipoParentesco, "ID", "Nombre", beneficiario.IdTipoParentesco);
            return View(beneficiario);
        }
      

   
        
        // GET: Beneficiarios1/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            Beneficiario beneficiario = db.Beneficiario.Find(id);
            if (beneficiario == null)
            {
                return HttpNotFound();
            }
            return View(beneficiario);
        }

        // POST: Beneficiarios1/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            Beneficiario beneficiario = db.Beneficiario.Find(id);
            // db.Beneficiario.Remove(beneficiario);
            // db.SaveChanges();
            String constring = "Data Source = MARIA; Initial Catalog = Banco; Integrated Security = True";
            SqlConnection sqlcon = new SqlConnection(constring);
            String pname = "banco_dbo_eliminarBeneficiario";
            sqlcon.Open();
            SqlCommand com = new SqlCommand(pname, sqlcon);
            com.CommandType = CommandType.StoredProcedure;
            com.Parameters.AddWithValue("@Id", beneficiario.ID);
            com.ExecuteScalar();
            sqlcon.Close();


            return RedirectToAction("Index");
        }

        protected override void Dispose(bool disposing)
        {
            if (disposing)
            {
                db.Dispose();
            }
            base.Dispose(disposing);

        }

    }
}