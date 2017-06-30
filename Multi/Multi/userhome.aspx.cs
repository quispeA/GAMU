using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Multi
{
    public partial class userhome : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["USERNAME"] != null)
            {
                Labelexitoso.Text = "Sesion Iniciada, bienvenido"+Session["USERNAME"].ToString();
            }
            else
            {
                Response.Redirect("IniciarSesion.asp");
            }

        }

        protected void Butonsalir_Click(object sender, EventArgs e)
        {
            Session["USERNAME"] = null;
            Response.Redirect("Default.aspx");
        }
    }
}