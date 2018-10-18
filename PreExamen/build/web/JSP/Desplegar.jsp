<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@page import="java.sql.*,java.io.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
       <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/css/materialize.min.css">
      <!-- Compiled and minified JavaScript -->
      <script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.100.2/js/materialize.min.js"></script>
      <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
      <link rel = "stylesheet" href = "https://fonts.googleapis.com/icon?family=Material+Icons">
      <link rel = "stylesheet" href = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/css/materialize.min.css">
      <script type = "text/javascript" src = "https://code.jquery.com/jquery-2.1.1.min.js"></script>           
      <script src = "https://cdnjs.cloudflare.com/ajax/libs/materialize/0.97.3/js/materialize.min.js"></script> 
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
    </head>
    <body>
      <% 
        Connection c=null;
        Statement s=null;
        ResultSet r=null;          
      try{
        Class.forName("com.mysql.jdbc.Driver").newInstance();
        c = DriverManager.getConnection("jdbc:mysql://localhost/preexamen","root","n0m3l0");
        s = c.createStatement();
        }
        catch(SQLException error){
            out.print(error.toString());
        }
      try{
      r = s.executeQuery("select * from Registro");
      out.println("<html>");
      out.println("<center>");
      out.println("<table border: red 9px solid; class='highlight'>");
          out.println("<tr>");
          out.println("<th valign='middle'>" + "Nombre" + "</th>");
          out.println("<th>" + "Paterno" + "</th>");
          out.println("<th>" + "Materno" + "</th>");
          out.println("<th>" + "Escuela" + "</th>");
          out.println("<th>" + "Materia F" + "</th>");
          out.println("<th>" + "Deporte F" + "</th>");
          out.println("</tr>");
          
      while(r.next()){
        String nom = r.getString("nombre");
        String apem = r.getString("apellidom");
        String apep = r.getString("apellidop");
        String escu = r.getString("escuela");
        String matf = r.getString("matfavo");
        String deportf = r.getString("deportefav");
          out.println("<td>" + nom + "</td>");
          out.println("<td>" + apem + "</td>");
          out.println("<td>" + apep + "</td>");
          out.println("<td>" + escu + "</td>");
          out.println("<td>" + matf + "</td>");
          out.println("<td>" + deportf + "</td>");
          out.println("</tr>");
      }
                out.println("</table>");
                out.println("<br><br>");
                out.println("<a href='../Index.jsp'>Regresar</a>");
                out.println("</center>");
                out.println("</html>");
      }
      
      catch(SQLException error){
            out.print(error.toString());
        }
      
      
      %>
      <br>
    </body>
</html>