using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Data;
namespace Multi
{
    public partial class IniciarSesion : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (Request.Cookies["UNAME"] != null && Request.Cookies["PWD"] != null)
                {
                    usuario.Text = Request.Cookies["UNAME"].Value;
                    pass.Attributes["value"] = Request.Cookies["PWD"].Value;
                    CheckBox1.Checked = true;
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            String CS = ConfigurationManager.ConnectionStrings["ConnectionString"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("select * from Usuarios where Usuario = '"+usuario.Text+"' and pass = '"+pass.Text+"' ",con);
                con.Open();
                SqlDataAdapter sda = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                sda.Fill(dt);

                if (dt.Rows.Count!=0)
                {
                    if (CheckBox1.Checked)
                    {
                        Response.Cookies["UNAME"].Value = usuario.Text;
                        Response.Cookies["PWD"].Value = pass.Text;
                        Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(15);
                        Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(15);

                       

                    }
                    else
                    {
                     Response.Cookies["UNAME"].Expires = DateTime.Now.AddDays(-1);
                     Response.Cookies["PWD"].Expires = DateTime.Now.AddDays(-1);

                    }
                    Session["USERNAME"] = usuario.Text;
                    Response.Redirect("userhome.aspx");

                }
                else
                {
                    LabelError.Text = "!Usuario o contraseña invalidas!";
                }

            }

        }
    }
}