<%@ Page Title="" Language="C#" MasterPageFile="~/Site1.Master" AutoEventWireup="true" CodeBehind="IniciarSesion.aspx.cs" Inherits="Multi.IniciarSesion" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <div class="container">
        <div class="form-horizontal">
            <div class="form-group">
                <asp:Label ID="Lalbel1" runat="server" CssClass="col-md-2 control-label" Text="Usuario"> </asp:Label>
                <div class="col-md-3">
                    <asp:TextBox runat="server" ID="usuario" CssClass="form-control"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" CssClass="text-danger" runat="server" ErrorMessage="campo obligatorio" ControlToValidate="usuario"></asp:RequiredFieldValidator>
                </div>
            </div>


            <div class="form-group">
                <asp:Label ID="Label1" runat="server" CssClass="col-md-2 control-label" Text="contraseña"> </asp:Label>
                <div class="col-md-3">
                    <asp:TextBox runat="server" ID="pass" CssClass="form-control" TextMode="Password"></asp:TextBox>
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" CssClass="text-danger" runat="server" ErrorMessage="Campo obligatorio" ControlToValidate="pass"></asp:RequiredFieldValidator>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:CheckBox ID="CheckBox1" runat="server" />
                    <asp:Label ID="Label2" runat="server" CssClass="col-md-2 control-label" Text="Recordar contraseña"> </asp:Label>

                </div>
            </div>

            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Button ID="Button1" runat="server" CssClass="btn btn-default" Text="Iniciar" OnClick="Button1_Click" />
                    <asp:LinkButton ID="LinkButton1" runat="server" PostBackUrl="~/Registrarse.aspx">Registrarse</asp:LinkButton>
                </div>
            </div>

            <div class="form-group">
                <div class="col-md-2"></div>
                <div class="col-md-6">
                    <asp:Label ID="LabelError" runat="server" CssClass="text-danger"></asp:Label>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
