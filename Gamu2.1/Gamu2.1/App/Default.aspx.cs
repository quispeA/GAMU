using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Net;
using System.Net.Mail;
using System.Collections;
using System.Net.Mime;
namespace Gamu2._1.App
{
    public partial class Default : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        
            
        protected void Enviar_Click1(object sender, EventArgs e)
        {
            
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["BDConeccion"].ToString());
            con.Open();
            string cons = "select count(*) from Usuarios where Correro='" + Email.Text + "'";
            SqlCommand cmd = new SqlCommand(cons, con);
            string salida = cmd.ExecuteScalar().ToString();


            if (salida == "0")
            {
                var correo = Email.Text;
                
                if (correo == "" )
                {

                }
                else
                {
                    System.Net.Mail.MailMessage msg = new System.Net.Mail.MailMessage();
                    msg.To.Add(correo);
                    msg.From = new MailAddress("dashihi34@gmail.com", "toctoc", System.Text.Encoding.UTF8);
                    msg.Subject = "Bienvenido";
                    msg.SubjectEncoding = System.Text.Encoding.UTF8;
                    msg.Body = "Accede a este lin para registrarte ";
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
                  
                    Response.Redirect("Envio.aspx?key=" + correo);
                }
                
                
                

            }
            else
            {
                Response.Redirect("Correoinco.aspx");
            }
        }

    }
}
            



