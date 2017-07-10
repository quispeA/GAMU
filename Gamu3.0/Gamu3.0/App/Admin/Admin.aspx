<%@ Page Title="" Language="C#" MasterPageFile="~/App/Master/Admin.Master" AutoEventWireup="true" CodeBehind="Admin.aspx.cs" Inherits="Gamu3._0.App.Admin.Admin" %>
<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
     
    <h1>USUARIOS</h1>
    <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataKeyNames="IdUsuario" DataSourceID="SqlDataSource1" AllowSorting="True" AllowPaging="True" CellPadding="5" ForeColor="#333333" GridLines="None">
        <AlternatingRowStyle BackColor="White" ForeColor="#284775"></AlternatingRowStyle>
        <Columns>
            <asp:CommandField ShowEditButton="True" ShowDeleteButton="True"></asp:CommandField>
            <asp:BoundField DataField="IdUsuario" HeaderText="IdUsuario" ReadOnly="True" InsertVisible="False" SortExpression="IdUsuario"></asp:BoundField>
            <asp:BoundField DataField="Usuario" HeaderText="Usuario" SortExpression="Usuario"></asp:BoundField>
            <asp:BoundField DataField="NombreUsuario" HeaderText="NombreUsuario" SortExpression="NombreUsuario"></asp:BoundField>
            <asp:BoundField DataField="ApellidoUsuario" HeaderText="ApellidoUsuario" SortExpression="ApellidoUsuario"></asp:BoundField>
            <asp:BoundField DataField="Correro" HeaderText="Correro" SortExpression="Correro"></asp:BoundField>
            <asp:BoundField DataField="Universidad" HeaderText="Universidad" SortExpression="Universidad"></asp:BoundField>
            <asp:BoundField DataField="pass" HeaderText="pass" SortExpression="pass"></asp:BoundField>
            <asp:BoundField DataField="Rol" HeaderText="Rol" SortExpression="Rol"></asp:BoundField>
            <asp:BoundField DataField="tipoUsuario" HeaderText="tipoUsuario" SortExpression="tipoUsuario"></asp:BoundField>
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
    <asp:SqlDataSource runat="server" ID="SqlDataSource1" ConnectionString='<%$ ConnectionStrings:DBGAMU2017ConnectionString %>' SelectCommand="SELECT * FROM [Usuarios] ORDER BY [IdUsuario]" ConflictDetection="CompareAllValues" DeleteCommand="DELETE FROM [Usuarios] WHERE [IdUsuario] = @original_IdUsuario AND (([Usuario] = @original_Usuario) OR ([Usuario] IS NULL AND @original_Usuario IS NULL)) AND [NombreUsuario] = @original_NombreUsuario AND [ApellidoUsuario] = @original_ApellidoUsuario AND [Correro] = @original_Correro AND (([Universidad] = @original_Universidad) OR ([Universidad] IS NULL AND @original_Universidad IS NULL)) AND [pass] = @original_pass AND (([Rol] = @original_Rol) OR ([Rol] IS NULL AND @original_Rol IS NULL)) AND (([tipoUsuario] = @original_tipoUsuario) OR ([tipoUsuario] IS NULL AND @original_tipoUsuario IS NULL))" InsertCommand="INSERT INTO [Usuarios] ([Usuario], [NombreUsuario], [ApellidoUsuario], [Correro], [Universidad], [pass], [Rol], [tipoUsuario]) VALUES (@Usuario, @NombreUsuario, @ApellidoUsuario, @Correro, @Universidad, @pass, @Rol, @tipoUsuario)" OldValuesParameterFormatString="original_{0}" UpdateCommand="UPDATE [Usuarios] SET [Usuario] = @Usuario, [NombreUsuario] = @NombreUsuario, [ApellidoUsuario] = @ApellidoUsuario, [Correro] = @Correro, [Universidad] = @Universidad, [pass] = @pass, [Rol] = @Rol, [tipoUsuario] = @tipoUsuario WHERE [IdUsuario] = @original_IdUsuario AND (([Usuario] = @original_Usuario) OR ([Usuario] IS NULL AND @original_Usuario IS NULL)) AND [NombreUsuario] = @original_NombreUsuario AND [ApellidoUsuario] = @original_ApellidoUsuario AND [Correro] = @original_Correro AND (([Universidad] = @original_Universidad) OR ([Universidad] IS NULL AND @original_Universidad IS NULL)) AND [pass] = @original_pass AND (([Rol] = @original_Rol) OR ([Rol] IS NULL AND @original_Rol IS NULL)) AND (([tipoUsuario] = @original_tipoUsuario) OR ([tipoUsuario] IS NULL AND @original_tipoUsuario IS NULL))">
        <DeleteParameters>
            <asp:Parameter Name="original_IdUsuario" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Usuario" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_NombreUsuario" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_ApellidoUsuario" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Correro" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Universidad" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_pass" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Rol" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_tipoUsuario" Type="String"></asp:Parameter>
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="Usuario" Type="String"></asp:Parameter>
            <asp:Parameter Name="NombreUsuario" Type="String"></asp:Parameter>
            <asp:Parameter Name="ApellidoUsuario" Type="String"></asp:Parameter>
            <asp:Parameter Name="Correro" Type="String"></asp:Parameter>
            <asp:Parameter Name="Universidad" Type="String"></asp:Parameter>
            <asp:Parameter Name="pass" Type="String"></asp:Parameter>
            <asp:Parameter Name="Rol" Type="String"></asp:Parameter>
            <asp:Parameter Name="tipoUsuario" Type="String"></asp:Parameter>
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Usuario" Type="String"></asp:Parameter>
            <asp:Parameter Name="NombreUsuario" Type="String"></asp:Parameter>
            <asp:Parameter Name="ApellidoUsuario" Type="String"></asp:Parameter>
            <asp:Parameter Name="Correro" Type="String"></asp:Parameter>
            <asp:Parameter Name="Universidad" Type="String"></asp:Parameter>
            <asp:Parameter Name="pass" Type="String"></asp:Parameter>
            <asp:Parameter Name="Rol" Type="String"></asp:Parameter>
            <asp:Parameter Name="tipoUsuario" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_IdUsuario" Type="Int32"></asp:Parameter>
            <asp:Parameter Name="original_Usuario" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_NombreUsuario" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_ApellidoUsuario" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Correro" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Universidad" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_pass" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_Rol" Type="String"></asp:Parameter>
            <asp:Parameter Name="original_tipoUsuario" Type="String"></asp:Parameter>
        </UpdateParameters>
    </asp:SqlDataSource>
</asp:Content>
