<%@ Page Title="" Language="C#" MasterPageFile="~/App/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Grupos.aspx.cs" Inherits="Gamu3._0.App.AdminPaginas.Grupos" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <h1>GRUPOS</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdGrupo" DataSourceID="SqlDataSource1" CellPadding="4" ForeColor="#333333" GridLines="None" AllowPaging="True">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
            <asp:BoundField DataField="IdGrupo" HeaderText="IdGrupo" ReadOnly="True" InsertVisible="False" SortExpression="IdGrupo"></asp:BoundField>
            <asp:BoundField DataField="NombreGrupo" HeaderText="NombreGrupo" SortExpression="NombreGrupo"></asp:BoundField>
            <asp:BoundField DataField="Descripcion" HeaderText="Descripcion" SortExpression="Descripcion"></asp:BoundField>
            <asp:BoundField DataField="Logo" HeaderText="Logo" SortExpression="Logo"></asp:BoundField>
            <asp:BoundField DataField="Tipo" HeaderText="Tipo" SortExpression="Tipo"></asp:BoundField>
            <asp:BoundField DataField="IdTema" HeaderText="IdTema" SortExpression="IdTema"></asp:BoundField>
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
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:DBGAMU2017ConnectionString %>' DeleteCommand="DELETE FROM [Grupos] WHERE [IdGrupo] = @original_IdGrupo AND (([NombreGrupo] = @original_NombreGrupo) OR ([NombreGrupo] IS NULL AND @original_NombreGrupo IS NULL)) AND (([Descripcion] = @original_Descripcion) OR ([Descripcion] IS NULL AND @original_Descripcion IS NULL)) AND (([Logo] = @original_Logo) OR ([Logo] IS NULL AND @original_Logo IS NULL)) AND (([Tipo] = @original_Tipo) OR ([Tipo] IS NULL AND @original_Tipo IS NULL)) AND (([IdTema] = @original_IdTema) OR ([IdTema] IS NULL AND @original_IdTema IS NULL))" InsertCommand="INSERT INTO [Grupos] ([NombreGrupo], [Descripcion], [Logo], [Tipo], [IdTema]) VALUES (@NombreGrupo, @Descripcion, @Logo, @Tipo, @IdTema)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [Grupos] ORDER BY [IdGrupo]" UpdateCommand="UPDATE [Grupos] SET [NombreGrupo] = @NombreGrupo, [Descripcion] = @Descripcion, [Logo] = @Logo, [Tipo] = @Tipo, [IdTema] = @IdTema WHERE [IdGrupo] = @original_IdGrupo AND (([NombreGrupo] = @original_NombreGrupo) OR ([NombreGrupo] IS NULL AND @original_NombreGrupo IS NULL)) AND (([Descripcion] = @original_Descripcion) OR ([Descripcion] IS NULL AND @original_Descripcion IS NULL)) AND (([Logo] = @original_Logo) OR ([Logo] IS NULL AND @original_Logo IS NULL)) AND (([Tipo] = @original_Tipo) OR ([Tipo] IS NULL AND @original_Tipo IS NULL)) AND (([IdTema] = @original_IdTema) OR ([IdTema] IS NULL AND @original_IdTema IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_IdGrupo" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_NombreGrupo" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Descripcion" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Logo" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Tipo" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_IdTema" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="NombreGrupo" Type="String"></asp:Parameter>
            <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
            <asp:Parameter Name="Logo" Type="String"></asp:Parameter>
            <asp:Parameter Name="Tipo" Type="String"></asp:Parameter>
            <asp:Parameter Name="IdTema" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="NombreGrupo" Type="String"></asp:Parameter>
            <asp:Parameter Name="Descripcion" Type="String"></asp:Parameter>
            <asp:Parameter Name="Logo" Type="String"></asp:Parameter>
            <asp:Parameter Name="Tipo" Type="String"></asp:Parameter>
            <asp:Parameter Name="IdTema" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_IdGrupo" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_NombreGrupo" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Descripcion" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Logo" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Tipo" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_IdTema" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>

    <h1> GRUPOS USUARIO</h1>

    <asp:GridView ID="GridView2" runat="server" AutoGenerateColumns="False" DataKeyNames="IdGruposUsuario" DataSourceID="SqlDataSource2" CellPadding="4" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
        <Columns>
            <asp:BoundField DataField="IdGruposUsuario" HeaderText="IdGruposUsuario" ReadOnly="True" InsertVisible="False" SortExpression="IdGruposUsuario"></asp:BoundField>
            <asp:BoundField DataField="FechaCreacion" HeaderText="FechaCreacion" SortExpression="FechaCreacion"></asp:BoundField>
            <asp:BoundField DataField="IdGrupo" HeaderText="IdGrupo" SortExpression="IdGrupo"></asp:BoundField>
            <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" SortExpression="IdUsuario"></asp:BoundField>
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
    <asp:SqlDataSource runat="server" ID="SqlDataSource2" ConflictDetection="CompareAllValues" ConnectionString='<%$ ConnectionStrings:DBGAMU2017ConnectionString %>' DeleteCommand="DELETE FROM [GruposUsuarios] WHERE [IdGruposUsuario] = @original_IdGruposUsuario AND (([FechaCreacion] = @original_FechaCreacion) OR ([FechaCreacion] IS NULL AND @original_FechaCreacion IS NULL)) AND (([IdGrupo] = @original_IdGrupo) OR ([IdGrupo] IS NULL AND @original_IdGrupo IS NULL)) AND (([IdUsuario] = @original_IdUsuario) OR ([IdUsuario] IS NULL AND @original_IdUsuario IS NULL))" InsertCommand="INSERT INTO [GruposUsuarios] ([FechaCreacion], [IdGrupo], [IdUsuario]) VALUES (@FechaCreacion, @IdGrupo, @IdUsuario)" OldValuesParameterFormatString="original_{0}" SelectCommand="SELECT * FROM [GruposUsuarios]" UpdateCommand="UPDATE [GruposUsuarios] SET [FechaCreacion] = @FechaCreacion, [IdGrupo] = @IdGrupo, [IdUsuario] = @IdUsuario WHERE [IdGruposUsuario] = @original_IdGruposUsuario AND (([FechaCreacion] = @original_FechaCreacion) OR ([FechaCreacion] IS NULL AND @original_FechaCreacion IS NULL)) AND (([IdGrupo] = @original_IdGrupo) OR ([IdGrupo] IS NULL AND @original_IdGrupo IS NULL)) AND (([IdUsuario] = @original_IdUsuario) OR ([IdUsuario] IS NULL AND @original_IdUsuario IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_IdGruposUsuario" Type="Int32"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="original_FechaCreacion"></asp:Parameter>
            <asp:Parameter Name="original_IdGrupo" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_IdUsuario" Type="Int32"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter DbType="Date" Name="FechaCreacion"></asp:Parameter>
            <asp:Parameter Name="IdGrupo" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="IdUsuario" Type="Int32"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter DbType="Date" Name="FechaCreacion"></asp:Parameter>
            <asp:Parameter Name="IdGrupo" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="IdUsuario" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_IdGruposUsuario" Type="Int32"></asp:Parameter>
            <asp:Parameter DbType="Date" Name="original_FechaCreacion"></asp:Parameter>
            <asp:Parameter Name="original_IdGrupo" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_IdUsuario" Type="Int32"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
