<%@ Page Title="" Language="C#" MasterPageFile="~/App/Master/Admin.Master" AutoEventWireup="true" CodeBehind="AgregarCurso.aspx.cs" Inherits="Gamu3._0.App.AdminPaginas.AgregarCurso" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">


    <asp:FormView ID="FormView1" DefaultMode="Insert" runat="server" DataKeyNames="IdCurso" DataSourceID="SqlDataSource1" OnItemInserted="FormView1_ItemInserted">
        <InsertItemTemplate>
            NombreCurso:<br />
            <asp:TextBox Columns="50" Text='<%# Bind("NombreCurso") %>' runat="server" ID="NombreCursoTextBox" /><br />
     
            Descripcion:<br />
            <asp:TextBox Columns="50" Rows="10" TextMode="MultiLine" Text='<%# Bind("Descripcion") %>' runat="server" ID="Descripcion" /><br />
            
            <asp:LinkButton runat="server" Text="Añadir" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancelar" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
    </asp:FormView>

    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:DBGAMU2017ConnectionString %>' DeleteCommand="DELETE FROM [Cursos] WHERE [IdCurso] = @original_IdCurso AND [NombreCurso] = @original_NombreCurso AND (([Descripcion] = @original_Descripcion) OR ([Descripcion] IS NULL AND @original_Descripcion IS NULL))" InsertCommand="INSERT INTO [Cursos] ([NombreCurso], [Descripcion]) VALUES (@NombreCurso, @Descripcion)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Cursos]" UpdateCommand="UPDATE [Cursos] SET [NombreCurso] = @NombreCurso, [Descripcion] = @Descripcion WHERE [IdCurso] = @original_IdCurso AND [NombreCurso] = @original_NombreCurso AND (([Descripcion] = @original_Descripcion) OR ([Descripcion] IS NULL AND @original_Descripcion IS NULL))">
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
