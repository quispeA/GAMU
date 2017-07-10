<%@ Page Title="" Language="C#" MasterPageFile="~/App/Masterpage/Masterprincipal.Master" AutoEventWireup="true" CodeBehind="Paginaprincipal.aspx.cs" Inherits="Gamu2._1.App.Paginaprincipal" %>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <section>

        <div class="row text-center" id="margen">
            <div class="col-md-3">
                <div>
                    <asp:DataList ID="DataList1" runat="server" DataKeyField="IdUsuario" DataSourceID="qsldDatos">
                        <ItemTemplate>
                            <div class="text-center" style="width: 216px; margin: 20px 43px; background-color: lightgray; border: 1px solid black; padding: 15px;">
                                <img src="https://cdn0.iconfinder.com/data/icons/education-vintage/614/243_-_Male_Student-64.png" /><br />
                                <span>Usuario: <%#Eval("Usuario")%></span><br />
                                <span>Nombre: <%#Eval("NombreUsuario")%></span><br />
                                <asp:Button ID="Button1" runat="server" Text="Editar" class="btn-info" />
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource runat="server" ID="qsldDatos" ConnectionString='<%$ ConnectionStrings:DBGAMU2017ConnectionString2 %>' SelectCommand="SELECT * FROM [Usuarios] WHERE ([Usuario] = @Usuario)">
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="nam" Name="Usuario" Type="String"></asp:QueryStringParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                </div>
                <div id="grupos">
                    <h4>Mis Grupos</h4>
                    <asp:DataList ID="DataList2" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <div style="margin-left:60px;">
                                <a style="color:black;text-decoration:underline;" href=".aspx?cus="<%#Eval("IdGrupo")%>><%#Eval("NombreGrupo")%>
                                </a>
                                <br />
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DBGAMU2017ConnectionString %>' SelectCommand="SELECT * FROM Usuarios u join GruposUsuarios gu on
                        (u.IdUsuario=gu.IdUsuario) join Grupo gp on(gu.IdGrupo=gp.IdGrupo) join Cursos c on(c.IdCurso=gp.IdCurso) WHERE (Usuario = @Usuario)">
                        <SelectParameters>
                            <asp:QueryStringParameter QueryStringField="nam" Name="Usuario" Type="String"></asp:QueryStringParameter>
                        </SelectParameters>
                    </asp:SqlDataSource>
                    
                            <div>

            <button type="button" class="btn btn-info btn-lg" data-toggle="modal" data-target="#crear-grupo">Crear Grupo</button>

            <%--comomsd--%>
            <div class="modal fade" id="crear-grupo" role="dialog">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">

                        <div class="modal-body">
                            <h1>Crear Nuevo Grupo</h1>

                            <asp:FormView DefaultMode="Insert" ID="FormView1" runat="server" DataKeyNames="IdGrupo" DataSourceID="SqlDataSource2">
                                
                                <InsertItemTemplate>
                                    <div class="col-sm-6 ala-izq">
                                        
                                        <h3>Nombre del Grupo * </h3>
                                        <asp:TextBox Text='<%# Bind("NombreGrupo") %>' runat="server" ID="NombreTextBox" placeholder="Nombre del Grupo" Width="90%" Font-Size="13"/><br />
                                        
                                        <h3>Descripción del Grupo *</h3>
                                        <asp:TextBox TextMode="MultiLine" Rows="4" Columns="50" Text='<%# Bind("Descripcion") %>' runat="server" ID="DescripcionTextBox" placeholder="Descripcion del Grupo" Width="90%" Font-Size="13"/><br />
                                        <h3>Tipo de grupo *</h3>
                                        <asp:TextBox Text='<%# Bind("Tipo") %>' runat="server" ID="TipoTextBox" placeholder="Privado o Público" Width="90%" Font-Size="13"/><br />

                                    </div>

                                    <div class="col-sm-6 ala-der">
                                        <div class="imagen">
                                            <img src="Imagen/ima.png" />
                                        </div>
                                        <div class="">
                                                <h3 class="url-imagen" >Logo: 
                                                <asp:TextBox Text='<%# Bind("Logo") %>' runat="server" ID="LogoTextBox" placeholder="Url de la imagen" Width="73%" Font-Size="13"/><br />
                                            </vh3>
                                        </div>
                                        <h3>Curso</h3>
                                        <asp:TextBox Text='<%# Bind("Curso") %>' runat="server" ID="CursoTextBox" placeholder="Curso" Width="90%" Font-Size="13"/><br />
                                        <h3>Tema</h3>
                                        <asp:TextBox Text='<%# Bind("Tema") %>' runat="server" ID="TemaTextBox" placeholder="Tema" Width="90%" Font-Size="13"/><br />
                                    
                                    </div>
                                    <div class="clearfix visible-lg"></div>
                                    <div class="row">
                                        <div class="col-sm-6">
                                            <div class="conten-boton">
                                            <asp:Button ID="Button1" class="btn boton-crear-grupo btn-info" runat="server" Text="Crear" CommandName="Insert" CausesValidation="true"/>

                                            </div>
                                        </div>
                                        <div class="col-sm-6">
                                            <div class="conten-boton">
                                            <asp:Button ID="Button2" class="btn boton-crear-grupo btn-info" runat="server" Text="Cancelar"  data-dismiss="modal"/>

                                            </div>
                                        </div>
                                    </div>

                                </InsertItemTemplate>
                                
                            </asp:FormView>
                            <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConnectionString='<%$ ConnectionStrings:DBGAMU2017ConnectionString %>' DeleteCommand="DELETE FROM [Grupo] WHERE [IdGrupo] = @IdGrupo" InsertCommand="INSERT INTO [Grupo] ([NombreGrupo], [Descripcion], [Logo], [Tipo], [Tema], [Curso]) VALUES (@NombreGrupo, @Descripcion, @Logo, @Tipo, @Tema, @Curso)" SelectCommand="SELECT * FROM [Grupo]" UpdateCommand="UPDATE [Grupo] SET [NombreGrupo] = @NombreGrupo, [Descripcion] = @Descripcion, [Logo] = @Logo, [Tipo] = @Tipo, [Tema] = @Tema, [Curso] = @Curso WHERE [IdGrupo] = @IdGrupo">
                                <DeleteParameters>
                                    <asp:Parameter Name="IdGrupo" Type="Int32"></asp:Parameter>
                                </DeleteParameters>
                                <InsertParameters>
                                    <asp:Parameter Name="NombreGrupo" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Logo" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Tipo" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Tema" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Curso" Type="String"></asp:Parameter>
                                </InsertParameters>
                                <UpdateParameters>
                                    <asp:Parameter Name="NombreGrupo" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Logo" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Tipo" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Tema" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="Curso" Type="String"></asp:Parameter>
                                    <asp:Parameter Name="IdGrupo" Type="Int32"></asp:Parameter>
                                </UpdateParameters>
                            </asp:SqlDataSource>
                        </div>

                    </div>
                </div>
            </div>
        </div>


                </div>
                <div id="cursos">
                    <h4>Mis Cursos</h4>
                    <asp:DataList ID="DataList3" runat="server" DataSourceID="SqlDataSource1">
                        <ItemTemplate>
                            <div style="margin-left:60px;">
                                <a style="color:black;text-decoration:underline;" href=".aspx?cus="<%#Eval("IdCurso")%>>
                                    <img src=""/>
                                    <%#Eval("NombreCurso")%>
                                </a>
                            </div>
                        </ItemTemplate>
                    </asp:DataList>
                    
                </div>


            </div>


            <div class="col-md-6">
                <div id="Binv">
                    <h4>Bienvenido</h4>
                    <p>
                        some text
                    </p>
                </div>
                <asp:Panel ID="ElegirRol" runat="server" Visible="false">

                    <div id="roles">
                        <h4>Elige tu rol</h4>
                        <div class="col-md-4">
                            <img src="https://cdn1.iconfinder.com/data/icons/education-1-15/151/1-128.png" />
                            <span>Estudiante</span>
                            <br />

                        </div>

                        <div class="col-md-4">
                            <img src="https://cdn0.iconfinder.com/data/icons/tutor-icon-set/512/teacher_writing_on_board-128.png" />
                            <span>Asesor</span>
                            <br />

                        </div>
                        <div class="col-md-4">
                            <img src="https://cdn1.iconfinder.com/data/icons/logotypes/32/spotify-128.png" />
                            <span>Ambos</span>
                            <br />
                        </div>

                        <asp:RadioButtonList ID="rdbElegirRol" runat="server" AutoPostBack="True" RepeatDirection="Horizontal" Width="626px">

                            <asp:ListItem Value="Estudiante">
                                <br />
                            </asp:ListItem>
                            <asp:ListItem Value="Asesor">
                                <br />
                            </asp:ListItem>
                            <asp:ListItem Value="Ambos">
                                <br />
                            </asp:ListItem>

                        </asp:RadioButtonList>
                        <div>
                            <asp:Button ID="btnRol" runat="server" Text="Guardar" Width="100px" class="btn-success" OnClick="btnRol_Click" />

                        </div>

                        <div>
                        </div>


                    </div>
                </asp:Panel>
            </div>


            <div class="col-md-3">
                sss
            </div>
        </div>

    </section>



</asp:Content>
