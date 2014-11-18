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
    public partial class RecetasNuevas : System.Web.UI.Page
    {
        SqlConnection ConeccionBase = new SqlConnection(@"user id=Cando;password=1234;server=CANDO-SATELITE;database=AMI;connection timeout=30");
        SqlConnection Coneccion2 = new SqlConnection(@"user id=Cando;password=1234;server=CANDO-SATELITE;database=AMI;connection timeout=30");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Usuario"] != null)
            {
                LabelIDDoctor.Text = Session["Usuario"].ToString(); // obtengo el nombre del usuario del doctor
            }
            else
            {
                Response.Redirect("CuentaDoctor.aspx");
            } // se va a la pagina de registro del doctor porque no tiene usuario    

        }

        protected void BotonConfirmar_Click(object sender, EventArgs e)
        {
            try
            {
                ConeccionBase.Open();

                SqlCommand LecturaDatos = new SqlCommand("select (" + LabelIDDoctor.Text + ") from PacienteDoctor where (" + LabelIDDoctor.Text + ") = '" + TextUsuarioBusqueda.Text + "'", ConeccionBase);
                SqlDataReader Respuesta = LecturaDatos.ExecuteReader();

                string UsuariPacienteBaDatos = "";

                while (Respuesta.Read())
                {
                    UsuariPacienteBaDatos = Respuesta[0].ToString(); 
                }

                ConeccionBase.Close();

                if (UsuariPacienteBaDatos == TextUsuarioBusqueda.Text) //Compara si el codigo que insertado por el cliente estqa bien
                {
                    LabelExito.Text = "El paciente si esta en su lista";
                    LabelPacienteSelec.Text = UsuariPacienteBaDatos;
                }
                else
                {
                    LabelExito.Text = "Error, no existe ese paciente";
                }

            }
            catch (Exception ex)
            {
                Console.WriteLine(ex.ToString());
            }
           // Session["Usuario"] = Usuario.Text;
        }

        protected void BotonVolver_Click(object sender, EventArgs e)
        {
            Response.Redirect("FormDoctor.aspx");
        }

        protected void BotonEnviar_Click(object sender, EventArgs e)
        {
                if (LabelExito.Text == "El paciente si esta en su lista")
                {
                    LabelRevisarPaciente.Text = "";
                    if (TextMed1.Text != "" || TextMed2.Text != "" || TextMed3.Text != "" || TextMed4.Text != "" || TextMed5.Text != "")
                    {
         /*   try
            {
                ConeccionBase.Open();

                SqlCommand EscritorDatos = new SqlCommand("insert into " + LabelIDDoctor.Text + "(Usuario,Nombre,Apellido,Telefono,TipoSangre,Sexo) values('" + ''TextPaciente.Text + "','" + NombreBD + "','" + ApellidoBD + "','" + TelefonoBD + "','" + TipoSangreBD + "','" + SexoBD + "')", Coneccion2);
                EscritorDatos.ExecuteNonQuery();

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
                            ConeccionBase.Open();
                            SqlCommand EscritorDatos = new SqlCommand("insert into " + LabelUsuario.Text + "(Usuario,Nombre,Apellido,Telefono,TipoSangre,Sexo) values('" + TextPaciente.Text + "','" + NombreBD + "','" + ApellidoBD + "','" + TelefonoBD + "','" + TipoSangreBD + "','" + SexoBD + "')", Coneccion2);
                            EscritorDatos.ExecuteNonQuery();

                            int count = 0;

                            while (Respuesta.Read())
                            {
                                if (count == 0)
                                {
                                    LabelNick1.Text = Respuesta[0].ToString();
                                    LabelNombre1.Text = Respuesta[1].ToString();
                                    LabelApellido1.Text = Respuesta[2].ToString();
                                    LabelTel1.Text = Respuesta[3].ToString();
                                    LabelSan1.Text = Respuesta[4].ToString();
                                }
                                else if (count == 1)
                                {
                                    LabelNick2.Text = Respuesta[0].ToString();
                                    LabelNombre2.Text = Respuesta[1].ToString();
                                    LabelApellido2.Text = Respuesta[2].ToString();
                                    LabelTel2.Text = Respuesta[3].ToString();
                                    LabelSan2.Text = Respuesta[4].ToString();
                                }
                                else if (count == 2)
                                {
                                    LabelNick3.Text = Respuesta[0].ToString();
                                    LabelNombre3.Text = Respuesta[1].ToString();
                                    LabelApellido3.Text = Respuesta[2].ToString();
                                    LabelTel3.Text = Respuesta[3].ToString();
                                    LabelSan3.Text = Respuesta[4].ToString();
                                }
                                else if (count == 3)
                                {
                                    LabelNick4.Text = Respuesta[0].ToString();
                                    LabelNombre4.Text = Respuesta[1].ToString();
                                    LabelApellido4.Text = Respuesta[2].ToString();
                                    LabelTel4.Text = Respuesta[3].ToString();
                                    LabelSan4.Text = Respuesta[4].ToString();
                                }
                                else if (count == 4)
                                {
                                    LabelNick5.Text = Respuesta[0].ToString();
                                    LabelNombre5.Text = Respuesta[1].ToString();
                                    LabelApellido5.Text = Respuesta[2].ToString();
                                    LabelTel5.Text = Respuesta[3].ToString();
                                    LabelSan5.Text = Respuesta[4].ToString();
                                }
                                else if (count == 5)
                                {
                                    LabelNick6.Text = Respuesta[0].ToString();
                                    LabelNombre6.Text = Respuesta[1].ToString();
                                    LabelApellido6.Text = Respuesta[2].ToString();
                                    LabelTel6.Text = Respuesta[3].ToString();
                                    LabelSan6.Text = Respuesta[4].ToString();
                                }
                                else if (count == 6)
                                {
                                    LabelNick7.Text = Respuesta[0].ToString();
                                    LabelNombre7.Text = Respuesta[1].ToString();
                                    LabelApellido7.Text = Respuesta[2].ToString();
                                    LabelTel7.Text = Respuesta[3].ToString();
                                    LabelSan7.Text = Respuesta[4].ToString();
                                }
                                else if (count == 7)
                                {
                                    LabelNick8.Text = Respuesta[0].ToString();
                                    LabelNombre8.Text = Respuesta[1].ToString();
                                    LabelApellido8.Text = Respuesta[2].ToString();
                                    LabelTel8.Text = Respuesta[3].ToString();
                                    LabelSan8.Text = Respuesta[4].ToString();
                                }
                                else if (count == 8)
                                {
                                    LabelNick9.Text = Respuesta[0].ToString();
                                    LabelNombre9.Text = Respuesta[1].ToString();
                                    LabelApellido9.Text = Respuesta[2].ToString();
                                    LabelTel9.Text = Respuesta[3].ToString();
                                    LabelSan9.Text = Respuesta[4].ToString();
                                }
                                else if (count == 9)
                                {
                                    LabelNick10.Text = Respuesta[0].ToString();
                                    LabelNombre10.Text = Respuesta[1].ToString();
                                    LabelApellido10.Text = Respuesta[2].ToString();
                                    LabelTel10.Text = Respuesta[3].ToString();
                                    LabelSan10.Text = Respuesta[4].ToString();
                                }

                                count = count + 1;

                            }
                            ConeccionBase.Close();
                        }
                        catch (Exception ex)
                        {

                            Console.WriteLine(ex.ToString());
                        }*/
                    }
                    else
                    {
                        LabelRevisarPaciente.Text = "Introduzca una medicina";
                    }
                }
                else
                {
                    LabelRevisarPaciente.Text = "Seleccione un paciente de su lista";
                }
                Coneccion2.Close();
        }
    }
}