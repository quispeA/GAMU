<%@ Page Title="" Language="C#" MasterPageFile="~/App/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Cursos.aspx.cs" Inherits="Gamu3._0.App.Admin.Cursos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">

     <h1>CURSOS</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdCurso" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
            <asp:BoundField DataField="IdCurso" HeaderText="IdCurso" ReadOnly="True" InsertVisible="False" SortExpression="IdCurso"></asp:BoundField>
            <asp:BoundField DataField="NombreCurso" HeaderText="NombreCurso" SortExpression="NombreCurso"></asp:BoundField>
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion"></asp:BoundField>
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

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DBGAMU2017ConnectionString %>' SelectCommand="SELECT * FROM [Cursos]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Cursos] WHERE [IdCurso] = @original_IdCurso AND [NombreCurso] = @original_NombreCurso AND (([Descripcion] = @original_Descripcion) OR ([Descripcion] IS NULL AND @original_Descripcion IS NULL))" InsertCommand="INSERT INTO [Cursos] ([NombreCurso], [Descripcion]) VALUES (@NombreCurso, @Descripcion)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Cursos] SET [NombreCurso] = @NombreCurso, [Descripcion] = @Descripcion WHERE [IdCurso] = @original_IdCurso AND [NombreCurso] = @original_NombreCurso AND (([Descripcion] = @original_Descripcion) OR ([Descripcion] IS NULL AND @original_Descripcion IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_IdCurso" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_NombreCurso" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Descripcion" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NombreCurso" Type="String"></asp:Parameter>
            <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NombreCurso" Type="String"></asp:Parameter>
            <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_IdCurso" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_NombreCurso" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Descripcion" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
