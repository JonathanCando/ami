using System;
using System.Collections.Generic;
using System.Linq;
using System.Web; 
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Configuration;

namespace AmiNew
{
    public partial class CuentaDoctor : System.Web.UI.Page
    {
        SqlConnection ConeccionBase = new SqlConnection(@"user id=Cando;password=1234;server=CANDO-SATELITE;database=AMI;connection timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enter_Click(object sender, EventArgs e)
        {
            int NumeroRan;
            Random NumeroAlea = new Random();
            NumeroRan = NumeroAlea.Next(1, 30);
            // Listo.Text = Solo.ToString();
            try
            {
                ConeccionBase.Open();
                SqlCommand LecturaDatos = new SqlCommand("select Pass from Doctor where usuario = '"+Usuario.Text + "'", ConeccionBase);
                SqlDataReader Respuesta = LecturaDatos.ExecuteReader();

                string pass = "";

                while (Respuesta.Read())
                {
                    pass = Respuesta[0].ToString(); // aberiguar si es con numero
                }

                ConeccionBase.Close();

                if (Contrasena.Text == pass)
                {
                 //   mbox("Success"); 
                    Session["Usuario"] = Usuario.Text;
                    Session["NumeroRandom"] = NumeroRan.ToString();
                    Response.Redirect("CuentaDocToken.aspx");
                }
                else
                {
                  //  Response.Redirect("CuentaDoctor.aspx");
                    Response.Write("Por favor, vuelve a introducir tu contraseña.");
                //    MessageBox.show("Contrasena mal");                   
                }

            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.ToString());
            }
        }

        private void mbox(string p)
        {
            throw new NotImplementedException();
        }
    }
}