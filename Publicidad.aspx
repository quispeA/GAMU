<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="publicidad.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="csspubli.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        
        <div id="contPubli">

            <h2 style="text-align:center;">Publicidad</h2>

            <asp:AdRotator ID="AdRotator1" runat="server" DataSourceID="XmlDataSource1" />

            <asp:XmlDataSource runat="server" ID="XmlDataSource1" DataFile="~/publicidad.xml">

            </asp:XmlDataSource>
        </div>
    </form>
</body>
</html>
