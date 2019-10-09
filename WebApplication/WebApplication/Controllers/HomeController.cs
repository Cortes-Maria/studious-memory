using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Mvc;
using System.Data;
using System.Data.SqlClient;

namespace WebApplication.Controllers
{
    public class HomeController : Controller
    {
        public ActionResult Index()
        {
            return View();
        }

        public ActionResult About()
        {
            ViewBag.Message = "Banco Bases de Datos";

            return View();
        }

        public ActionResult Contact()
        {
            ViewBag.Message = "Your contact page.";

            return View();
        }

        //Recibe como parametro el nombre de usuario y contraseña, los busca en la bd por medio del SP banco_dbo_Login
        private int getIdByUserPass(String user, String pass)
        {
            string cnnString = "Data Source = MARIA; Initial Catalog = Banco; Integrated Security = True"; //Ajustarlo a tu string

            SqlConnection sqlcon = new SqlConnection(cnnString);
            String pname = "banco_dbo_Login";
            sqlcon.Open();
            SqlCommand com = new SqlCommand(pname, sqlcon);
            com.CommandType = CommandType.StoredProcedure;

            com.Parameters.AddWithValue("@usuario", user);
            com.Parameters.AddWithValue("@contrasena", pass);
            com.Parameters.Add("@retValue", System.Data.SqlDbType.Int).Direction = System.Data.ParameterDirection.ReturnValue; //parametro para obtener lo que retorna el SP(Id del cliente)

            com.ExecuteNonQuery();
            int o = (int)com.Parameters["@retValue"].Value; //se obtiene el resultado del SP
            sqlcon.Close();
            return o;
        }

        //Funcion para llamar la vista de login
        public ActionResult Login()
        {
            try
            {
                string usuario = Request.Params["user"]; //Se obtiene el usuario
                string contrasena = Request.Params["pass"]; //Se obtiene el password
                int id = getIdByUserPass(usuario, contrasena);
                if (id > 0) //Si i = 0, no existe, si i < 0, error, sino si existe
                {
                    return RedirectToAction("Index", "Beneficiarios1");
                }
                return View("Login");
            }
            catch
            {
                return View("Login");
            }
        }

    }

}

    