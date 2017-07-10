<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Registro.aspx.cs" Inherits="Gamu3._0.App.Registro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css" />
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
    <meta charset="utf-8" />
    <title>Gamu Resgistro</title>
    <link href="Css/Register.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <header>
            <div class="row text-capitalize">
                <div class="col-md-5 text-center">
                    <h3 style="color: white;">Gamu</h3>
                </div>
            </div>
        </header>
        <section>
            <div id="registro" style="background: #F0EDED;">


                <div class="col-md-6">

                    <label class="col-xs-11">Nombre</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="nombre" runat="server" Class="form-control" placeholder="Nombre"></asp:TextBox>
                    </div>

                    <label class="col-xs-11">Apellidos</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="apellidos" runat="server" Class="form-control" placeholder="Apellidos"></asp:TextBox>
                    </div>

                    <label class="col-xs-11">Universidad</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="universidad" runat="server" Class="form-control" placeholder="Universidad"></asp:TextBox>
                    </div>

                    <div class="col-xs-11 boton">

                        <asp:Label ID="Label1" runat="server"></asp:Label>
                    </div>

                </div>
                <div class="col-md-6">
                    <label class="col-xs-11">Nombre de usuario</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="usuario" runat="server" Class="form-control" placeholder="Nombre usuario"></asp:TextBox>
                    </div>


                    <label class="col-xs-11">Contraseña</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="contra" runat="server" Class="form-control" placeholder="Contraseña" TextMode="Password"></asp:TextBox>
                    </div>

                    <label class="col-xs-11">Contraseña</label>
                    <div class="col-xs-11">
                        <asp:TextBox ID="tbCPass" runat="server" Class="form-control" placeholder="Confirmar contraseña" TextMode="Password"></asp:TextBox>
                    </div>
                    <div class="col-xs-11 text-right" id="btnres">
                        <asp:Button ID="btnRegistrarse" runat="server" Class="btn btn-success" Text="Registrarse" OnClick="btnRegistrarse_Click" />
                    </div>


                </div>




            </div>

        </section>

        <footer class="text-center">
            <a href="" style="color: gray; text-decoration: underline;"><span>Ayuda</span></a>
        </footer>
    </form>
</body>
</html>
