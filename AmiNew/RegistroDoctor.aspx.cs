using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace AmiNew
{
    public partial class RegistroDoctor : System.Web.UI.Page
    {
        SqlConnection ConeccionBase = new SqlConnection(@"user id=Cando;password=1234;server=CANDO-SATELITE;database=AMI;connection timeout=30");
        protected void Page_Load(object sender, EventArgs e)
        {
        }


        protected void Enter_Click1(object sender, EventArgs e)
        {
            try
            {
                Puntos.Text = "1";
                Token.Text = "2232";
                  ConeccionBase.Open();
                if (DContrasena.Text == DCContrasena.Text)
                {
                    SqlCommand EscritorDatos = new SqlCommand("insert into Doctor(Nombre,Apellido,Usuario,Edad,Direccion,Telefono,Pass,IDToken,Puntos,Sexo) values('" + DNombre.Text + "','" + DApellido.Text + "','" + DUsuario.Text + "','" + DAno.Text + "-" + DMes.Text + "-" + DDia.Text + "','" + DDireccion.Text + "'," + DTelefono.Text + ",'" + DContrasena.Text + "'," + Token.Text + "," + Puntos.Text + "," + DSexo.Text + ")", ConeccionBase);
                    EscritorDatos.ExecuteNonQuery();
                    Response.Redirect("FormDoctor.aspx");
                }
                // colocar opciones como si el asuario ya existe o llenar mas datos etc..
            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.ToString());
            }
        }

    }
}