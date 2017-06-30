<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="Registrarse.aspx.cs" Inherits="Multi.Registrarse" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
      <!-- Formlariode registro -->

   

    <div class="registro">


        <label class="col-xs-11">Nombre de usuario</label>
        <div class="col-xs-11">
        <asp:TextBox ID="usuario"  runat="server" Class="form-control" placeholder="Nombre usuario"></asp:TextBox>
        </div>


        <label class="col-xs-11">Contraseña</label>
        <div class="col-xs-11">
        <asp:TextBox ID="contra"  runat="server" Class="form-control" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
        </div>

        <label class="col-xs-11">Contraseña</label>
        <div class="col-xs-11">
        <asp:TextBox ID="tbCPass"  runat="server" Class="form-control" placeholder="Confirmar contraseña" TextMode="Password"></asp:TextBox>
        </div>

        <label class="col-xs-11">Correo</label>
        <div class="col-xs-11">
        <asp:TextBox ID="email"  runat="server" Class="form-control" placeholder="Correo" TextMode="Email"></asp:TextBox>
        </div>

        <label class="col-xs-11">Nombre</label>
        <div class="col-xs-11">
        <asp:TextBox ID="nombre"  runat="server" Class="form-control" placeholder="Nombre"></asp:TextBox>
        </div>
        
        <label class="col-xs-11">Apellidos</label>
        <div class="col-xs-11">
        <asp:TextBox ID="apellidos"  runat="server" Class="form-control" placeholder="Apellidos"></asp:TextBox>
        </div>

        <label class="col-xs-11">Universidad</label>
        <div class="col-xs-11">
        <asp:TextBox ID="universidad"  runat="server" Class="form-control" placeholder="Universidad"></asp:TextBox>
        </div>

        <div class="col-xs-11 boton">
        <asp:Button ID="btnRegistrarse" runat="server" Class="btn btn-success" Text="Registrarse" OnClick="btnRegistrarse_Click"/>
            <asp:Label ID="Label1" runat="server"></asp:Label>
        </div>



    </div>
    

    <!-- Fin Formlariode registro -->
</asp:Content>
