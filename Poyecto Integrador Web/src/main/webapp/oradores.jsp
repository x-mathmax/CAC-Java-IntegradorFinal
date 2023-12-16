<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <link rel="stylesheet" href="css/styles.css" />
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
      integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
      crossorigin="anonymous"
    />
    <title>Oradores</title>
  </head>
  <body>
<jsp:include page="header.jsp"/>
<%@ page import="java.sql.Connection, java.sql.DriverManager, java.sql.Statement, java.sql.ResultSet" %>

    <!--Main-->

    <main>

    <!-- <div id="contenedorTabla"></div> -->

   <%
           String url = "jdbc:mysql://localhost:3306/integradorFinal?useSSL=false";
           String usuario = "root";
           String contrasenia = "99999999";

           Class.forName("com.mysql.jdbc.Driver");
           Connection con = DriverManager.getConnection(url, usuario, contrasenia);

           Statement mysql = con.createStatement();

           String oradores = "SELECT nombre, apellido, tema FROM oradores";
           ResultSet resultado = mysql.executeQuery(oradores);
       %>
       <div class="container table-responsive text-center mt-5 mb-4">
           <div class="textosLoginRegister">
             <h5 class="textoMayuscGrande">Oradores Registrados</h5>
           </div>
           <table class="table-bordered table table-striped mt-5">
               <tr class="table-dark">
                   <th class="pe-5">NOMBRE</th>
                   <th class="pe-5">APELLIDO</th>
                   <th class="pe-5">TEMA</th>
               </tr>
               <%  while (resultado.next()) { %>
               <tr>
                   <td class="pe-5"><%= resultado.getString("nombre") %></td>
                   <td class="pe-5"><%= resultado.getString("apellido") %></td>
                   <td class="pe-5"><%= resultado.getString("tema") %></td>
               </tr>
               <%}%>
           </table>
       </div>



    <!-- Script Bootstrap -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>


    <!--Script principal-->

    <script src="./js/script.js"></script>
  </body>
</html>