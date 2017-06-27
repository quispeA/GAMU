<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="WebForm1.aspx.cs" Inherits="PaginadeRegistro.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href='https://fonts.googleapis.com/css?family=Open+Sans:400,300,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Sofia' rel='stylesheet' type='text/css'>
    <link href="Estilos.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">

        <div id="formulario">
            <form action="" method="post">
                <h2>Formulario de registro</h2>
                <div class="contenido">
                    <div>
                        <input type="text" name="street" placeholder="Nombres" />
                    </div>
                    <div>
                        <input type="text" name="street" placeholder="Usuario" />
                    </div>

                    <div>
                        <input type="password" name="street" placeholder="Contraseña" />
                    </div>
                    <div>
                        <select class="values" name="select">
                            <option value="value1">Value 1</option>
                            <option value="value2">Value 2</option>
                            <option value="value3">Value 3</option>
                        </select>
                    </div>

                </div>
                <div class="contenido">
                    <div>

                        <input type="text" name="street" placeholder="Apellidos" />
                    </div>
                    <div>

                        <input type="text" name="street" placeholder="Edad" />
                    </div>

                    <div>

                        <input type="password" name="street" placeholder="Contraseña" />
                    </div>

                    <div>
                        
                        <select class="values" name="select">
                            <option value="value1">Value 1</option>
                            <option value="value2">Value 2</option>
                            <option value="value3">Value 3</option>
                        </select>
                    </div>

                </div>
            </form>
            <input class='animated' type='submit' value='Register'>
            

        </div>

    </form>
</body>
</html>
