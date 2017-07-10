<%@ Page Title="" Language="C#" MasterPageFile="~/App/Master/Inicio.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Gamu3._0.App.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section id="divprinc">
        <div class="col-md-5 col-xs-10 text-center" id="gamuInfo">
            <h3><strong>Gamu</strong></h3>
            <h4 style="color:#888;">
                Los grupos de estudio de Gamu es un entorno donde puedes compartir tus ideas.
            </h4>
            <br />
            <input type="button" onclick="location.href ='#secHome'" class="btn-default btn-lg" value="Comienza ahora" style="color:dodgerblue;border:1px solid dodgerblue;"/>
            <h5><a href="Login.aspx" style="text-decoration:underline;color:dodgerblue;">Tengo una cuenta</a></h5>
        </div>

    </section>
    <section id="secHome">
        <div class="row">
            <div class="col-md-6 text-center">
                <img height=350 src="https://infoes.goconqr.com/files/2016/05/screenshot_studyplanner_001_laptop_ES.png"/>
            </div>
            <div class=" col-md-6 text-center">
                <div class="jumbotron" id="enviaremail">
                    <h4>Genera tu codigo y registrate. Es gratis!</h4>
                    <asp:TextBox ID="Email" Type="Email" runat="server" Width="50%" Height="37px" Font-Size="Large" placeholder="Email"></asp:TextBox>
                    <asp:Button ID="Enviar" runat="server" Text="Comenzar" class="btn-info" Height="37px" Font-Size="Large" OnClick="Enviar_Click1" />
                    <br />
                    <asp:Panel ID="pnMiss" runat="server" Visible="false">
                        <div class="alert alert-danger" id="divCorreo" style="margin: auto;">
                            <strong>Campos Incompletos!</strong>
                        </div>
                    </asp:Panel>
                    <asp:Panel ID="pnIncorrecto" runat="server" Visible="false">
                        <div class="alert alert-danger" id="divInc" style="margin: auto;">
                            <strong>El correo ya esta en uso ingrese otro!</strong>
                        </div>
                    </asp:Panel>
                </div>

            </div>


        </div>
    </section>
    <section id="servicios">
        <div class="container">
            <div class="row">
                <div class="cl-lg-12 text-center">
                    <h3 class="section-heading"><strong>¿Qué ofrece GAMU?</strong></h3>
                    <hr class="primary">
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
        <hr class="primary" />
        <iframe frameborder="no" width="560" height="315" src="http://www.wideo.co/embed/20403601499359563638?width=560&height=315"></iframe>
        <%--Imagen de como funciona --%>
    </section>
</asp:Content>
