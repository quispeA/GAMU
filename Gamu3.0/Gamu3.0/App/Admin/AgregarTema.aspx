<%@ Page Title="" Language="C#" MasterPageFile="~/App/Master/Admin.Master" AutoEventWireup="true" CodeBehind="AgregarTema.aspx.cs" Inherits="Gamu3._0.App.Admin.AgregarTema" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <asp:FormView ID="FormView1" DefaultMode ="Insert" runat="server" DataKeyNames="IdTema" DataSourceID="SqlDataSource1" OnItemInserted="FormView1_ItemInserted">
        
        <InsertItemTemplate>
            NombreTema:<br />
            <asp:TextBox ValidateRequestMode="Inherit" Columns="50" Text='<%# Bind("NombreTema") %>' runat="server" ID="NombreTemaTextBox" /><br />
            Descripcion:<br />
            <asp:TextBox  Rows=10 Columns=50 TextMode= "MultiLine" runat="server" ID="DescripcionTextBox" /><br />
            IdCurso: <br />
            <asp:TextBox ValidateRequestMode="Enabled" runat="server" Text='<%# Bind("IdCurso") %>'  ID="IdCursoTextBox" /><br />
            <asp:LinkButton runat= "server" Text="Añadir" CommandName="Insert" ID="InsertButton" CausesValidation="True" />&nbsp;<asp:LinkButton runat="server" Text="Cancelar" CommandName="Cancel" ID="InsertCancelButton" CausesValidation="False" />
        </InsertItemTemplate>
       
    </asp:FormView>
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
