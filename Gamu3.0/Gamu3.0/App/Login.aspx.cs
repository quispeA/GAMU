using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;
namespace Gamu3._0.App
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
        }
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (user.Text != "" && pass.Text != "")
            {
                pnLogin.Visible = false;
                
                SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["BDConeccion"].ToString());
                con.Open();
                string cons = "select count(*) from Usuarios where Usuario='" + user.Text + "' and pass='"+pass.Text+"'";
                SqlCommand cmd = new SqlCommand(cons, con);
                int salida = Convert.ToInt32(cmd.ExecuteScalar().ToString());
                if (salida!=0)
                {
                    var usuario = user.Text;
                    Response.Redirect("Main.aspx?"+usuario);
                }
                else
                {
                    user.Text = "";
                    pass.Text = "";
                    pnInocrrecto.Visible = true;
                    

                }
            }
            else
            {pnInocrrecto.Visible = false;
                pnLogin.Visible = true;
            }
            }
        }
    }