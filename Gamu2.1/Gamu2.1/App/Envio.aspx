<%@ Page Title="" Language="C#" MasterPageFile="~/App/Masterpage/MasterInicio.Master" AutoEventWireup="true" CodeBehind="Envio.aspx.cs" Inherits="Gamu2._1.App.Envio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div id="enviado">
        <h2>
            SE envio a tu correo
            <a href="Default.aspx">Volver</a>
            
        </h2>
        <asp:button id="Acceder" runat="server" text="Acceder" OnClick="Acceder_Click"  />
    </div>
</asp:Content>
