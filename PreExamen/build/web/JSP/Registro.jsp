<%-- 
    Document   : Registro
    Created on : 8/10/2018, 08:14:52 AM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <style>body {
        background-image: url("https://www.pixelstalk.net/wp-content/uploads/images1/Blur-Background-Simple-Images-Wallpaper-Of-Nature-Download.jpg");
        background-color: #cccccc;
        background-position: center;
        background-repeat: no-repeat;}
            table, td {
                border:2px solid black;
                border-spacing: 5px;
            }
            td { padding: 5px
            }
        </style>
    <body>
        <form action="../RegistroServlet" method="post">
            <h1>Registro</h1><br>
        Nombre: <input type="text" name="Nombre">
        <br><br>
        Apellido Paterno: <input type="text" name="ApellidoP">
        <br><br>
        Apellido Materno: <input type="text" name="ApellidoM">
        <br><br>
        Escuela: <input type="text" name="Escuela">
        <br><br>
        Materia Fav: <input type="text" name="MatFav">
        <br><br>
        Deporte Fav: <input type="text" name="DeproteFav">
        <br><br>
        <input type="submit" name="Enviar" value="Enviar">
        </form>
    </body>
</html>
