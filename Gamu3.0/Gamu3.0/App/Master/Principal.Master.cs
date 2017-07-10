using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;

using System.Web.Configuration;


namespace Gamu3._0.App.Master
{
    public partial class Principal : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string valor = Convert.ToString(Request.QueryString["us"]);
            SqlConnection con = new SqlConnection(WebConfigurationManager.ConnectionStrings["BDConeccion"].ToString());
            con.Open();
            string cons = "select * from Usuarios where Usuario='" + valor + "'";
            SqlCommand cmd = new SqlCommand(cons, con);
            SqlDataReader dt = cmd.ExecuteReader();
            if (dt.Read())
            {
                var id = dt.GetValue(0).ToString();
                
                var user = dt.GetValue(1).ToString();
                var rol = dt.GetValue(7).ToString();
                Usuario.Text = user;
                Rol.Text = rol;
            }
            


        }
        protected void AsigCurso_Click(object sender, EventArgs e)
        {
            String CS = ConfigurationManager.ConnectionStrings["BDConeccion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Insert into Cursos ( NombreCurso, Descripcion) values ('" + Curso.Text + "','" + DesCurso.Text + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();

            }

            

        }

        protected void AsigTema_Click(object sender, EventArgs e)
        {
            string idCurso = "";
            SqlConnection d = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BDConeccion"].ToString());
            d.Open();
            string consul = "select top 1 * from Cursos order by IdCurso desc";
            SqlCommand cmdt = new SqlCommand(consul, d);
            SqlDataReader dtt = cmdt.ExecuteReader();
            if (dtt.Read())
            {
                var id = dtt.GetValue(0).ToString();
                idCurso = id;
                Label1.Text = id;
            }

            String CS = ConfigurationManager.ConnectionStrings["BDConeccion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(CS))
            {

                SqlCommand cmd = new SqlCommand("Insert into Temas ( NombreTema, Descripcion,IdCurso) values ('" + Tema.Text + "','" + DesCurso.Text + "','" + idCurso + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();

            }
           

        }

        protected void Tipo_TextChanged(object sender, EventArgs e)
        {


        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            string idTema = "";

            SqlConnection d = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BDConeccion"].ToString());
            d.Open();
            string consul = "select top 1 * from Temas order by IdTema desc";
            SqlCommand cmdt = new SqlCommand(consul, d);
            SqlDataReader ddd = cmdt.ExecuteReader();
            if (ddd.Read())
            {
            }
            {
                var id = ddd.GetValue(0).ToString();
                idTema = id;
               
            }

            String CS = ConfigurationManager.ConnectionStrings["BDConeccion"].ConnectionString;
            using (SqlConnection cona = new SqlConnection(CS))
            {
                SqlCommand cmd = new SqlCommand("Insert into Grupos ( NombreGrupo, Descripcion,Logo,Tipo,IdTema) values ('" + NombreGr.Text + "','" + DescripcionTextBox.Text + "','" + Logo.Text + "','"  + Tipo.Text + "','" + idTema + "')", cona);
                cona.Open();
                cmd.ExecuteNonQuery();

            }

            String conx = ConfigurationManager.ConnectionStrings["BDConeccion"].ConnectionString;
            using (SqlConnection con = new SqlConnection(conx))
            {
                string idGrupo="";
                SqlConnection ds = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BDConeccion"].ToString());
                ds.Open();
                string consult = "select top 1 * from Grupos order by IdGrupo desc";
                SqlCommand ff = new SqlCommand(consult, ds);
                SqlDataReader dttt = ff.ExecuteReader();
                if (dttt.Read())
                {
                    var iffd = dttt.GetValue(0).ToString();
                    idGrupo = iffd;
                }

                string valor = Convert.ToString(Request.QueryString["us"]);
                SqlConnection yy = new SqlConnection(System.Web.Configuration.WebConfigurationManager.ConnectionStrings["BDConeccion"].ToString());
                yy.Open();
                string consulta1 = "select  * from Usuarios where Usuario='"+valor+"'";
                SqlCommand c = new SqlCommand(consulta1, yy);
                SqlDataReader cs = c.ExecuteReader();
                string IdUsuario="";
                if (cs.Read())
                {
                    IdUsuario = cs.GetValue(0).ToString();
                    
                }
                string mifecha = DateTime.Now.ToShortDateString();
                SqlCommand cmd = new SqlCommand("Insert into GruposUsuarios ( FechaCreacion,IdGrupo,IdUsuario) values ('" +mifecha +"','" + idGrupo + "','" + IdUsuario + "')", con);
                con.Open();
                cmd.ExecuteNonQuery();

            }
        }
    }
}