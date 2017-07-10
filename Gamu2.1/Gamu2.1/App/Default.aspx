<%@ Page Title="" Language="C#" MasterPageFile="~/App/Masterpage/MasterInicio.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Gamu2._1.App.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section class="bg-warning row" id="informacion">
        <div class="col-md-6 text-center">
            <h1 style="color: white;"><strong>GAMU</strong></h1>

            <h3 style="color: white;">Forma tu grupo y estudia</h3>
        </div>
        <div class=" col-md-6 text-center">
            <div class="jumbotron" id="enviaremail">
                <h4>Grupos de estudio te esperan. Registrate hoy!</h4>
                <asp:TextBox ID="Email" runat="server" Width="50%" Height="37px" Font-Size="Large" placeholder="Email"></asp:TextBox>
                <asp:Button ID="Enviar" runat="server" Text="Comenzar"  class="btn-info" Height="37px" Font-Size="Large" OnClick="Enviar_Click1"/>
            </div>
        </div>

    </section>
    <section>
    </section>
    <section id="servicios">
        <div class="container">
            <div class="row">
                <div class="cl-lg-12">
                  <h3 class="section-heading">  <strong>¿Qué ofrece GAMU?</strong></h3>
                    <hr class="primary" >
                </div>
            </div>
        </div>
        <div class="container">
            <div class="row">
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <img src="https://cdn3.iconfinder.com/data/icons/contact-10/512/7-128.png" />
                        <h4>Crea grupos de estudio</h4>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <img src="https://cdn1.iconfinder.com/data/icons/mixed-long-shadow/512/book_3-128.png" />
                        <h4>Accede a recursos educativos</h4>

                    </div>
                </div>

                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <img src="https://cdn3.iconfinder.com/data/icons/education-volume-1-1/48/02-128.png" />
                        <h4>Crea aulas virtuales para estudiar</h4>
                    </div>
                </div>
                <div class="col-lg-3 col-md-6 text-center">
                    <div class="service-box">
                        <img src="https://cdn3.iconfinder.com/data/icons/business-316/100/Videoconference_02-128.png" />
                        <h4>Accede a videoconferencias</h4>
                    </div>
                </div>
                
            </div>
        </div>
    </section>
    <section class="text-center" id="funciona">
        <h3><strong>¿Cómo funciona GAMU?</strong></h3>
        <hr class="primary"/>
        <img width="80%" height="220" src="https://vilmanunez.com/wp-content/uploads/2017/01/como-funciona-lead-ads-con-y-sin-herramientas.png"/>
         <%--Imagen de como funciona --%>
    </section>

</asp:Content>
