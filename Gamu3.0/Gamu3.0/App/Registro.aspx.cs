﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
using System.Drawing;

namespace Gamu3._0.App
{   
    public partial class Registro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        
        
        protected void btnRegistrarse_Click(object sender, EventArgs e)
        {
            string valor = Convert.ToString(Request.QueryString["key"]);
            if (nombre.Text != "" && contra.Text != "" && tbCPass.Text != "" && apellidos.Text != "" && universidad.Text != "")
            {
                if (tbCPass.Text == contra.Text)
                {


                    String CS = ConfigurationManager.ConnectionStrings["BDConeccion"].ConnectionString;
                    using (SqlConnection con = new SqlConnection(CS))
                    {
                        SqlCommand cmd = new SqlCommand("Insert into Usuarios (Usuario, NombreUsuario, ApellidoUsuario, Correro, Universidad, pass) values ('" + usuario.Text + "','" + nombre.Text + "','" + apellidos.Text + "','" + valor + "','" + universidad.Text + "','" + contra.Text + "')", con);
                        con.Open();
                        cmd.ExecuteNonQuery();
                        Label1.ForeColor = Color.Green;
                        Label1.Text = "Registro exitoso";
                        Response.Redirect("Main.aspx?us=" + usuario.Text);
                    }
                }
                else
                {
                    Label1.ForeColor = Color.Red;
                    Label1.Text = "contraseñas diferentes";
                }
            }
            else
            {
                Label1.ForeColor = Color.Red;
                Label1.Text = "campos obligatorios";
            }
        }
    }
}