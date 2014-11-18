using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
 
namespace AmiNew
{

              
    public partial class FormDoctor : System.Web.UI.Page
    {
        SqlConnection ConeccionBase = new SqlConnection(@"user id=Cando;password=1234;server=CANDO-SATELITE;database=AMI;connection timeout=30");
        SqlConnection Coneccion2 = new SqlConnection(@"user id=Cando;password=1234;server=CANDO-SATELITE;database=AMI;connection timeout=30");
        string UsuariBaDatos = "";
        string NombreBD = "";
        string ApellidoBD = "";
        string TelefonoBD = "";
        string TipoSangreBD = "";
        string EdadBD = "";
        string SexoBD = "";

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LabelUsuario.Text = Session["Usuario"].ToString();
            }
            else 
            { 
                Response.Redirect("CuentaDoctor.aspx"); 
            } // se va a la pagina de registro del doctor porque no tiene usuario            
        }

        protected void BotonSalir_Click(object sender, EventArgs e) //boton para salir y resetea a NULL la variable que
        {                                                              //pasa a diferentes paginas
            Session["Usuario"] = null;                              
            Response.Redirect("Inicio.aspx");
        }

        protected void BotonAgregar_Click(object sender, EventArgs e)
        {
           // Session["Usuario"] = null;
           // Response.Redirect("FormPaciente.aspx");
            try
            {
                ConeccionBase.Open();
                SqlCommand LecturaDatos = new SqlCommand("select Usuario,Nombre,Apellido,Telefono,TipoSangre,Edad,Sexo from Paciente where Usuario = '" + TextPaciente.Text + "'", ConeccionBase);
                SqlDataReader Respuesta = LecturaDatos.ExecuteReader();

                //variables donde se almacenan los datos datos del paciente

                while (Respuesta.Read())
                {
                    UsuariBaDatos = Respuesta[0].ToString(); // se guarda la columna usuario de la base de datos de la tabla paciente
                    NombreBD = Respuesta[1].ToString(); // se guarda la columna Nombre de la base de datos de la tabla paciente
                    ApellidoBD = Respuesta[2].ToString(); // se guarda la columna Apellido de la base de datos de la tabla paciente
                    TelefonoBD = Respuesta[3].ToString(); // se guarda la columna Telefono de la base de datos de la tabla paciente
                    TipoSangreBD = Respuesta[4].ToString(); // se guarda la columna TipoSangre de la base de datos de la tabla paciente
                    EdadBD = Respuesta[5].ToString(); // se guarda la columna Edad la base de datos de la tabla paciente
                    SexoBD = Respuesta[6].ToString(); // se guarda la columna Sexo de la base de datos de la tabla paciente
                }
                ConeccionBase.Close();          
            }
            catch (Exception ex)
            {

                Console.WriteLine(ex.ToString());
            }
            try 
            {
                Coneccion2.Open();
                if (TextPaciente.Text == UsuariBaDatos)
                {
                    SqlCommand EscritorDatos = new SqlCommand("insert into " + LabelUsuario.Text + "(Usuario,Nombre,Apellido,Telefono,TipoSangre,Sexo) values('" + TextPaciente.Text + "','" + NombreBD + "','" + ApellidoBD + "','" + TelefonoBD + "','" + TipoSangreBD + "','" + SexoBD + "')", Coneccion2);
                    EscritorDatos.ExecuteNonQuery();
                    LabelSiUsuario.Text = "Paciente agregado a su lista";
                    LabelNoUsuario.Text = "";
                }
                else
                {
                    LabelNoUsuario.Text = "";
                    LabelSiUsuario.Text = "Usuario no existe";
                }
                Coneccion2.Close();
            }
            catch (Exception ex)
            {
                LabelNoUsuario.Text = "";
                LabelSiUsuario.Text = "No puede agregar el mismo usuario a la lista";
                Console.WriteLine(ex.ToString());
            }

        }

        protected void BotonEliminar_Click(object sender, EventArgs e)
        {
            try
            {
                ConeccionBase.Open();
                SqlCommand LecturaDatos = new SqlCommand("Delete from " + LabelUsuario.Text + " where (Usuario) = '" + TextEliminar.Text + "'", ConeccionBase);
                SqlDataReader Respuesta = LecturaDatos.ExecuteReader();
                ConeccionBase.Close();
                LabelSiUsuario.Text = "";
                LabelNoUsuario.Text = "Usuario eliminado";
            }
            catch (Exception ex)
            {
                LabelSiUsuario.Text = "";
                LabelNoUsuario.Text = "Usuario no existe en su lista, por favor verifique la lista";
                Console.WriteLine(ex.ToString());
            }
        }

    }
}