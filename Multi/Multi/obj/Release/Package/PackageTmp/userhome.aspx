<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="userhome.aspx.cs" Inherits="Multi.userhome" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:Button ID="Butonsalir" CssClass="btn btn-default navbar-btn" runat="server" Text="Salir" OnClick="Butonsalir_Click" />
    <h2>BINEVENIDO</h2>

    <asp:Label ID="Labelexitoso" runat="server" CssClass="text-success"></asp:Label>
</asp:Content>
