<%@ Page Title="" Language="C#" MasterPageFile="~/App/MainMaster.Master" AutoEventWireup="true" CodeBehind="Paginaprincipal.aspx.cs" Inherits="GAMU12.App.Paginaprincipal" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <style>
        #listadiv > div {
            margin-top: 10px;
        }

        #infoprin > div {
            width: 70%;
            padding-top: 5px;
            margin-left: 20%;
            background-color: #F0EDED;
            border: 1px solid black;
            margin-top: 10px;
        }
    </style>
    <script src="push/push.min.js"></script>
    <script>
        Push.create('Hello World!', {
            body: 'This is some body content!',

            timeout: 10
        });
    </script>
    <section style="margin-bottom: 20px;" id="listadiv" class="row">
        <%-- Informacion del cliente --%>
        <div class="col-md-3" id="infoprin">
            <div class=" text-center">

                <asp:Label ID="NombreUser" runat="server" Text="Franz"></asp:Label>
                <br />
                <span style="font-family: cursive;">
                    <asp:Label ID="Usuariopri" runat="server" Text="Toctoc"></asp:Label></span><br />
                <span>Estudiante de </span>
            </div>
            <div class="text-left">
                <span><i>
                    <img src="https://cdn0.iconfinder.com/data/icons/education-flat-7/128/20_Graduation-48.png" /></i>
                    Grupos</span>
                <div style="width: 75%; margin-left: 15%;">
                    <%-- AQUI VA UN DATA LIST DE LOS GRUPOS --%>
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="Grupo" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <a href="pagina.aspx?c=<%# Eval("Id") %>"><%# Eval("Nombre") %></a>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:GamuConnectionString %>' SelectCommand="SELECT * FROM Grupo g join estudiante e
                    on (g.Grupo=e.Grupo) where e.Id=12"></asp:SqlDataSource>
           
                    <asp:Button ID="Button1" runat="server" class="btn-info" Text="Crear Grupo" />
                </div>
                
                <div class="text-left">
                    <span><i>
                        <img src="https://cdn4.iconfinder.com/data/icons/education-flat-outline/614/206_-_Books-48.png" /></i>
                        Cursos</span>
                    <%-- AQUI VA UN DATA LIST DE LOS CURSOS --%>
                    <div style="width: 75%; margin-left: 15%;">

                        <asp:DataList ID="DataList2" runat="server">
                            <ItemTemplate>
                                <a style="background-color: gray; padding: 8px;" href="pagina.aspx?c=<%# Eval("Id") %>"><%# Eval("Nombre") %>curso1</a>
                            </ItemTemplate>
                        </asp:DataList>
                    </div>

                </div>
            </div>
        </div>
        <%-- Informacion del cliente --%>
        <div class="col-md-6">
            <div class="jumbotron text-center">
               <h3>Bienvenido</h3>
            </div>
            <div class="text-center">
                <h4>Grupos que te pueden gustar</h4>
                
            </div>
        </div>
        <%-- Informacion del cliente --%>
        <div class="col-md-3">
            <div class="jumb">

            </div>
        </div>

    </section>
</asp:Content>
