using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Net;
using System.Net.Mail;
using System.Collections;
using System.Net.Mime;


namespace Gamu3._0.App
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Enviar_Click1(object sender, EventArgs e)
        {
            if (Email.Text=="")
            {
                
                pnMiss.Visible = true;
                
            }
            else { 
            SqlConnection con = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BDConeccion"].ToString());
            con.Open();
            string cons = "select count(*) from Usuarios where Correro='" + Email.Text + "'";
            SqlCommand cmd = new SqlCommand(cons, con);
            string salida = cmd.ExecuteScalar().ToString();
            pnIncorrecto.Visible = false;
            pnMiss.Visible = false;

            if (salida == "0")
            {
                var correo = Email.Text;

                    string[] arr2 = { "45XF1", "MF145", "EE567" };
                    Random n = new Random();
                    int num = n.Next(0,2);
                    var codigo = arr2[num];
                    System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();
                    msg.To.Add(correo);
                    msg.From = new MailAddress("dashihi34@gmail.com", "toctoc", System.Text.Encoding.UTF8);
                    msg.Subject = "Bienvenido a Gamu";
                    msg.SubjectEncoding = System.Text.Encoding.UTF8;
                    msg.Body = "Este es tu codigo para registrarte: " +codigo
                        ;
                    msg.BodyEncoding = System.Text.Encoding.UTF8;
                    msg.IsBodyHtml = false;


                    SmtpClient client = new SmtpClient();
                    client.Credentials = new System.Net.NetworkCredential("dashihi34@gmail.com", "Cuenta,1");
                    client.Port = 587;
                    client.Host = "smtp.gmail.com";
                    client.EnableSsl = true;
                    client.Send(msg);

                    Email.Text = "";
                    con.Close();

                    Response.Redirect("Envio.aspx?cr=" + correo);
                




            }
            else
            {
                pnIncorrecto.Visible = true;
            }
            }
        }
    }
}