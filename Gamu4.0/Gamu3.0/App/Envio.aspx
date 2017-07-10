<%@ Page Title="" Language="C#" MasterPageFile="~/App/Master/Inicio.Master" AutoEventWireup="true" CodeBehind="Envio.aspx.cs" Inherits="Gamu3._0.App.Envio" %>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section  id="fnEnvio">
        <div class="col-m-8 col-xs-5 text-center" id="divEnvio" >
            <h4>El codigo fue enviado a <strong><asp:Label ID="Correo" runat="server" Text="" style="font-family:cursive;"></asp:Label></strong> </h4>
            <asp:Button ID="btnAcceder" CssClass="btn btn-success" Width="100%" Height="40px" runat="server" Text="Registrate" OnClick="btnAcceder_Click" />
        </div>
    </section>
</asp:Content>
