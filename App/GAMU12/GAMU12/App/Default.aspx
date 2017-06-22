<%@ Page Title="" Language="C#" MasterPageFile="~/App/MasterPrimero.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="GAMU12.App.Default1" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="row" style="padding: 80px 0;">
        <div class="col-md-6 text-center">
            <h2>Gamu</h2>
            <h3>¿Necesitas un grupo para estudiar?</h3>
        </div>
        <div class="col-md-6 text-center">
            <div class="jumbotron">
                <h4>Grupos de estudios te esperan. Registrate hoy!</h4>
                <asp:TextBox ID="TextBox1" runat="server" placeholder="E-mail"></asp:TextBox>
                <asp:Button ID="Button1" runat="server" Text="Registrate Gratis" OnClick="Button1_Click" />
            </div>
        </div>
    </div>
    <div class=" container-fluid text-center">
        <h3>¿Cómo funciona gamu?</h3>
        <img src="" />
        <span>aqui como funciona imagen</span>
    </div>
    <div class="row ">
        
        <div class="col-md-4 text-center">
            <img src="https://cdn1.iconfinder.com/data/icons/linkedin-ui/48/jee-15-128.png"/>
            <h4>Millones de Usuario</h4>
        </div>
        <div class="col-md-4 text-center">
            <img src="https://cdn1.iconfinder.com/data/icons/linkedin-ui/48/jee-15-128.png"/>
            <h4>Grupos de estudio</h4>
        </div>
        <div class="col-md-4 text-center">
            <img src="https://cdn1.iconfinder.com/data/icons/linkedin-ui/48/jee-15-128.png"/>
            <h4>Video conferencias con susbcripcion</h4>
        </div>
    </div>
    <div style="height:200px;"></div>
</asp:Content>
