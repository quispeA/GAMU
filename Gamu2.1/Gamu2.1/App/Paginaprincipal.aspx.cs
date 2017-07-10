using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gamu2._1.App
{
    public partial class Paginaprincipal : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            var valor = Convert.ToString(Request.QueryString["nam"]);
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["BDConeccion"].ToString());
            con.Open();
            string cons = "select Rol from Usuarios where Correro='" + valor + "'";
            SqlCommand cmd = new SqlCommand(cons, con);
            SqlDataReader dt = cmd.ExecuteReader();
            if (dt.Read()==false)
            {
                ElegirRol.Visible = true;
            }
            

            


        }
        
        protected void btnRol_Click(object sender, EventArgs e)
        {
            string sel = rdbElegirRol.SelectedValue.ToString();
            var valor = Convert.ToString(Request.QueryString["nam"]);

            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["BDConeccion"].ToString());
            con.Open();
            string cons = "select * from Usuarios where Usuario='" + valor + "'";
            SqlCommand cmd = new SqlCommand(cons, con);
            SqlDataReader dt = cmd.ExecuteReader();
            if (dt.Read())
            {
                var id= dt.GetValue(0).ToString();
               
               
            String CS = ConfigurationManager.ConnectionStrings["BDConeccion"].ConnectionString;
            using (SqlConnection conx = new SqlConnection(CS))
            {
                SqlCommand qlcmd = new SqlCommand("Update  Usuarios set Rol ='" + sel + "' where IdUsuario="+id, conx);
                conx.Open();
                qlcmd.ExecuteNonQuery();

                    ElegirRol.Visible = false;

                }

            }
            else
            {
               
            }
            
        }
    }
}