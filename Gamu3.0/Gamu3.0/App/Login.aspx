<%@ Page Title="" Language="C#" MasterPageFile="~/App/Master/Inicio.Master" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gamu3._0.App.Login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="fLogin">

        <div class="col-md-3 col-xs-8 text-center" id="formLoging">
            <h3>Iniciar Sesión</h3>
            <asp:TextBox ID="user" runat="server" placeholder="Usuario" Width="100%" Height="40px" CssClass="form-control"></asp:TextBox><br />
            <asp:TextBox ID="pass" Type="Password" runat="server" placeholder="Contraseña" Width="100%" Height="40px" CssClass="form-control"></asp:TextBox><br />

            <asp:Panel ID="pnLogin" runat="server" Visible="false">

                <div class="alert alert-danger" id="divLogin">
                    <strong>Campos Incompletos!</strong>
                </div>
            </asp:Panel>
            <asp:Panel ID="pnInocrrecto" runat="server" Visible="false">
                <div class="alert alert-danger">
                    <strong>Usuario y Contraseña Incorrecto!</strong>
                </div>
            </asp:Panel>
            <asp:Button ID="btnLogin" CssClass="btn btn-success" Width="100%" Height="40px" runat="server" Text="Login" OnClick="btnLogin_Click" />


        </div>
        




</asp:Content>
