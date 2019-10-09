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
    public class EstadoCuentasController : Controller
    {
        private BancoEntities1 db = new BancoEntities1();

        // GET: EstadoCuentas
        public ActionResult Index()
        {
            try
            {
                String numeroCuenta = Request.Params["numCuenta"]; //Se obtiene el numero de cuenta de la vista
                string cnnString = "Data Source = MARIA; Initial Catalog = Banco; Integrated Security = True"; //Ajustarlo a tu string
                SqlConnection sqlcon = new SqlConnection(cnnString);
                String pname = "banco_dbo_consultarEstadoCuenta";
                sqlcon.Open();
                SqlCommand com = new SqlCommand(pname, sqlcon);
                com.CommandType = CommandType.StoredProcedure;

                com.Parameters.AddWithValue("@Id", numeroCuenta);
                

                SqlDataReader sqlReader = com.ExecuteReader();
                List<EstadoCuenta> model = new List<EstadoCuenta>();
                while (sqlReader.Read())
                {
                    var details = new EstadoCuenta();
                    details.IdCuentaAhorro = (int)sqlReader["IdCA"];
                    details.FechaInicio = (DateTime)sqlReader["FechaEmision"];
                    details.FechaFin = (DateTime)sqlReader["FechaFin"];
                    details.SaldoInicial =(decimal) sqlReader["SaldoInicial"];
                    details.SaldoFinal = (decimal)sqlReader["SaldoFinal"];
                    details.QRCH = (int)sqlReader["CantidadRetiros"];
                    details.Intereses = Convert.ToInt32( (decimal)sqlReader["InteresesAcu"] );
                    details.QRCA = (int)sqlReader["CantDepositos"];
                    model.Add(details);
                }
                return View("Index", model);
            }
            catch
            {
                var estadoCuenta = db.EstadoCuenta.Include(ec => ec.CuentaAhorro);
                return View(estadoCuenta.ToList());
            }
        }

        // GET: EstadoCuentas/Details/5
        public ActionResult Details(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EstadoCuenta estadoCuenta = db.EstadoCuenta.Find(id);
            if (estadoCuenta == null)
            {
                return HttpNotFound();
            }
            return View(estadoCuenta);
        }

        // GET: EstadoCuentas/Create
        public ActionResult Create()
        {
            ViewBag.IdCuentaAhorro = new SelectList(db.CuentaAhorro, "ID", "NumeroCuenta");
            return View();
        }

        // POST: EstadoCuentas/Create
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Create([Bind(Include = "ID,IdCuentaAhorro,FechaInicio,FechaFin,Intereses,SaldoInicial,SaldoFinal,QRCH,QRCA")] EstadoCuenta estadoCuenta)
        {
            if (ModelState.IsValid)
            {
                db.EstadoCuenta.Add(estadoCuenta);
                db.SaveChanges();
                return RedirectToAction("Index");
            }

            ViewBag.IdCuentaAhorro = new SelectList(db.CuentaAhorro, "ID", "NumeroCuenta", estadoCuenta.IdCuentaAhorro);
            return View(estadoCuenta);
        }

        // GET: EstadoCuentas/Edit/5
        public ActionResult Edit(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EstadoCuenta estadoCuenta = db.EstadoCuenta.Find(id);
            if (estadoCuenta == null)
            {
                return HttpNotFound();
            }
            ViewBag.IdCuentaAhorro = new SelectList(db.CuentaAhorro, "ID", "NumeroCuenta", estadoCuenta.IdCuentaAhorro);
            return View(estadoCuenta);
        }

        // POST: EstadoCuentas/Edit/5
        // Para protegerse de ataques de publicación excesiva, habilite las propiedades específicas a las que desea enlazarse. Para obtener 
        // más información vea https://go.microsoft.com/fwlink/?LinkId=317598.
        [HttpPost]
        [ValidateAntiForgeryToken]
        public ActionResult Edit([Bind(Include = "ID,IdCuentaAhorro,FechaInicio,FechaFin,Intereses,SaldoInicial,SaldoFinal,QRCH,QRCA")] EstadoCuenta estadoCuenta)
        {
            if (ModelState.IsValid)
            {
                db.Entry(estadoCuenta).State = EntityState.Modified;
                db.SaveChanges();
                return RedirectToAction("Index");
            }
            ViewBag.IdCuentaAhorro = new SelectList(db.CuentaAhorro, "ID", "NumeroCuenta", estadoCuenta.IdCuentaAhorro);
            return View(estadoCuenta);
        }

        // GET: EstadoCuentas/Delete/5
        public ActionResult Delete(int? id)
        {
            if (id == null)
            {
                return new HttpStatusCodeResult(HttpStatusCode.BadRequest);
            }
            EstadoCuenta estadoCuenta = db.EstadoCuenta.Find(id);
            if (estadoCuenta == null)
            {
                return HttpNotFound();
            }
            return View(estadoCuenta);
        }

        // POST: EstadoCuentas/Delete/5
        [HttpPost, ActionName("Delete")]
        [ValidateAntiForgeryToken]
        public ActionResult DeleteConfirmed(int id)
        {
            EstadoCuenta estadoCuenta = db.EstadoCuenta.Find(id);
            db.EstadoCuenta.Remove(estadoCuenta);
            db.SaveChanges();
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
