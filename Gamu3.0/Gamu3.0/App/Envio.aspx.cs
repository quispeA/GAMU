using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gamu3._0.App
{
    public partial class Envio : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string valor = Convert.ToString(Request.QueryString["cr"]);
            Correo.Text = valor;
        }

        protected void btnAcceder_Click(object sender, EventArgs e)
        {
            string valor = Convert.ToString(Request.QueryString["cr"]);
            Response.Redirect("Registro.aspx?cr="+valor);
        }
    }
}