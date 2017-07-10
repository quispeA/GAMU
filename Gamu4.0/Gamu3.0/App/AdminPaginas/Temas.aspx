<%@ Page Title="" Language="C#" MasterPageFile="~/App/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Temas.aspx.cs" Inherits="Gamu3._0.App.AdminPaginas.Temas" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>TEMAS</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdTema" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
        <Columns>
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True"></asp:CommandField>
            <asp:BoundField DataField="IdTema" HeaderText="IdTema" ReadOnly="True" InsertVisible="False" SortExpression="IdTema"></asp:BoundField>
            <asp:BoundField DataField="NombreTema" HeaderText="NombreTema" SortExpression="NombreTema"></asp:BoundField>
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion"></asp:BoundField>
            <asp:BoundField DataField="IdCurso" HeaderText="IdCurso" SortExpression="IdCurso"></asp:BoundField>
        </Columns>
        <EditRowStyle BackColor="#999999"></EditRowStyle>

        <FooterStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></FooterStyle>

        <HeaderStyle BackColor="#5D7B9D" Font-Bold="True" ForeColor="White"></HeaderStyle>

        <PagerStyle HorizontalAlign="Center" BackColor="#284775" ForeColor="White"></PagerStyle>

        <RowStyle BackColor="#F7F6F3" ForeColor="#333333"></RowStyle>

        <SelectedRowStyle BackColor="#E2DED6" Font-Bold="True" ForeColor="#333333"></SelectedRowStyle>

        <SortedAscendingCellStyle BackColor="#E9E7E2"></SortedAscendingCellStyle>

        <SortedAscendingHeaderStyle BackColor="#506C8C"></SortedAscendingHeaderStyle>

        <SortedDescendingCellStyle BackColor="#FFFDF8"></SortedDescendingCellStyle>

        <SortedDescendingHeaderStyle BackColor="#6F8DAE"></SortedDescendingHeaderStyle>
    </asp:GridView>
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DBGAMU2017ConnectionString %>' SelectCommand="SELECT * FROM [Temas]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Temas] WHERE [IdTema] = @original_IdTema AND (([NombreTema] = @original_NombreTema) OR ([NombreTema] IS NULL AND @original_NombreTema IS NULL)) AND (([Descripcion] = @original_Descripcion) OR ([Descripcion] IS NULL AND @original_Descripcion IS NULL)) AND (([IdCurso] = @original_IdCurso) OR ([IdCurso] IS NULL AND @original_IdCurso IS NULL))" InsertCommand="INSERT INTO [Temas] ([NombreTema], [Descripcion], [IdCurso]) VALUES (@NombreTema, @Descripcion, @IdCurso)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Temas] SET [NombreTema] = @NombreTema, [Descripcion] = @Descripcion, [IdCurso] = @IdCurso WHERE [IdTema] = @original_IdTema AND (([NombreTema] = @original_NombreTema) OR ([NombreTema] IS NULL AND @original_NombreTema IS NULL)) AND (([Descripcion] = @original_Descripcion) OR ([Descripcion] IS NULL AND @original_Descripcion IS NULL)) AND (([IdCurso] = @original_IdCurso) OR ([IdCurso] IS NULL AND @original_IdCurso IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_IdTema" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_NombreTema" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Descripcion" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_IdCurso" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NombreTema" Type="String"></asp:Parameter>
            <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
            <asp:Parameter Name="IdCurso" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NombreTema" Type="String"></asp:Parameter>
            <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
            <asp:Parameter Name="IdCurso" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_IdTema" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_NombreTema" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Descripcion" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_IdCurso" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
