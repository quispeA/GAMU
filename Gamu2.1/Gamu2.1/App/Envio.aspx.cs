using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gamu2._1.App
{
    public partial class Envio : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        
        protected void Acceder_Click(object sender, EventArgs e)
        {
            string valor = Convert.ToString(Request.QueryString["key"]);
            Response.Redirect("Registro.aspx?key="+valor);
        }
    }
}