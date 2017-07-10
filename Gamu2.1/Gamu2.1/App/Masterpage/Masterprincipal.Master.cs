using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gamu2._1.App.Masterpage
{
    public partial class Masterprincipal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            var valor = Convert.ToString(Request.QueryString["nam"]);
            lbNombre.Text = valor;
        }
    }
}