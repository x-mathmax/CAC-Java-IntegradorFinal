
<!doctype html>
<html lang="es">

<jsp:include page="head.jsp"/>

<body>

<jsp:include page="header.jsp"/>


<%@ page import="java.sql.*" %>
<%@ page import="java.io.*" %>
<%@ page import="javax.servlet.*" %>
<%@ page import="javax.servlet.http.*" %>
<%@ page import="java.sql.PreparedStatement" %>
<%@ page import="java.sql.SQLException" %>



     <!-- Presentacion - Main -->

      <main>
      <section class="container-fluid justify-content-right" id="primeraSeccion">
        <h1 class="tituloPrincipal">Conf Bs As</h1>
        <p class="descripcion">BsAs llega por primera vez a Argentina. Un evento para compartir con nuestra comunidad el conocimiento y experiencia de los expertos que están creando el futuro de internet. Ven a conocer a miembros del evento, otros estudiantes de Codo a Codo y los oradores de primer nivel que tenemos para ti. Te esperamos!</p>
        <div>
          <button type="button" class="btn btn-outline-light">Quiero ser orador</button>
          <button type="button" class="btn btn-success"><a  href="comprarTickets.jsp">Comprar Tickets</a></button>
        </div>
      </section>

      <!-- Cards oradores -->

      <section class="container-fluid" id="segundaSeccion">
        <h5 class="textoMayuscPeque">CONOCE A LOS</h5>
        <h5 class="textoMayuscGrande">ORADORES</h5>
        <div class="row row-cols-1 row-cols-md-6 g-6 justify-content-center align-self-center">
          <div class="col">
            <div class="card">
              <img src="img/steve.jpg" class="card-img-top" alt="Steve Jobs">
              <div class="card-body">
                <div class="etiquetas">
                  <p class="javascript">Javascript</p>
                  <p class="react">React</p>
                </div>
                <h5 class="card-title" style="clear: left;">Steve Jobs</h5>
                <p class="card-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. At aliquam corporis enim similique veniam velit blanditiis ratione tempore sunt eligendi, facilis atque praesentium ullam eveniet adipisci asperiores quos quas qui!.</p>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <img src="img/bill.jpg" class="card-img-top" alt="Bill Gates">
              <div class="card-body">
                <div class="etiquetas">
                  <p class="javascript">Javascript</p>
                  <p class="react">React</p>
                </div>
                <h5 class="card-title">Bill Gates</h5>
                <p class="card-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. At aliquam corporis enim similique veniam velit blanditiis ratione tempore sunt eligendi, facilis atque praesentium ullam eveniet adipisci asperiores quos quas qui!.</p>
              </div>
            </div>
          </div>
          <div class="col">
            <div class="card">
              <img src="img/ada.jpeg" class="card-img-top" alt="Ada Lovelace">
              <div class="card-body">
                <div class="etiquetas">
                  <p class="negocios">Negocios</p>
                  <p class="startups">Startups</p>
                </div>
                <h5 class="card-title">Ada Lovelace</h5>
                <p class="card-text">Lorem ipsum dolor sit, amet consectetur adipisicing elit. At aliquam corporis enim similique veniam velit blanditiis ratione tempore sunt eligendi, facilis atque praesentium ullam eveniet adipisci asperiores quos quas qui!.</p>
              </div>
            </div>
          </div>
        </div>
    </section>

    <section id="terceraSeccion">
      <div class="row g-3">
        <div class="col-md-6" >
          <img class="honolulu" src="img/honolulu.jpg" alt="Honolulu">
        </div>
        <div class="col-md-6 bg-dark contenido" id="pruebaBarb">
          <h2 class="gris">Bs As - Octubre</h2>
          <p class="gris">Buenos Aires es la provincia y la localidad más grande del estado de Argentina, en los Estados Unidos. Honolulu es la más sureña de entre las principales ciudades estadounidenses. Aunque el nombre de Honolulu se refiere al área urbana en la costa sureste de la isla de Oahu, la ciudad y el condado de Honolulu han formado una ciudad-condado consolidada que cubre toda la ciudad (aproximadamente 600km² de superficie).</p>
          <button type="button" class="btn btn-outline-light gris">Conocé más</button>
        </div>
      </div>
    </section>

    <section id="cuartaSeccion" class="container">
      <div class="textos">
        <h5 class="textoMayuscPeque">CONVIERTETE EN UN</h5>
        <h5 class="textoMayuscGrande">ORADOR</h5>
        <p>Anotate como orador para dar una <u class="dotted">charla ignite</u>. Cuentanos de que quieres hablar!</p>
      </div>

      <!-- Seccion formulario -->

      <form class="row g-3  justify-content-center">
        <div class="col-md-4">
          <input type="text" class="form-control" id="inputEmail" placeholder="Nombre" name="nombre">
        </div>
        <div class="col-md-4">
          <input type="text" class="form-control" id="inputPassword" placeholder="Apellido" name="apellido">
        </div>
        <div class="col-md-8 divGrande">
          <input type="text" class="form-control" id="inputAddress" placeholder="Sobre que quieres hablar?" name ="tema">
        </div>
        <div class="col-md-8">
          <p class="grisado">Recuerda incluir un titulo para tu charla</p>
        </div>
        <div class="col-md-8">
          <button type="submit" class="boton">Enviar</button>
        </div>
      </form>
    </section>
  </main>

  <%
      String url = "jdbc:mysql://localhost:3306/integradorFinal?useSSL=false";
      String usuario = "root";
      String contrasenia = "99999999";

      String nombre = request.getParameter("nombre");
      String apellido = request.getParameter("apellido");
      String tema = request.getParameter("tema");

      Connection con = null;
      PreparedStatement pstmt = null;

      try {
          Class.forName("com.mysql.jdbc.Driver");
          con = DriverManager.getConnection(url, usuario, contrasenia);

          String insertQuery = "INSERT INTO oradores (nombre, apellido, tema) VALUES (?, ?, ?)";
          pstmt = con.prepareStatement(insertQuery);
          pstmt.setString(1, nombre);
          pstmt.setString(2, apellido);
          pstmt.setString(3, tema);

          int filasAfectadas = pstmt.executeUpdate();

          if (filasAfectadas > 0) {
              out.println("Orador " + nombre + " " + apellido + " agregado correctamente.");
          } else {
              out.println("Error al agregar el orador.");
          }
      } catch (Exception e) {
          e.printStackTrace();
      } finally {
          try {
              if (pstmt != null) pstmt.close();
              if (con != null) con.close();
          } catch (SQLException e) {
              e.printStackTrace();
          }
      }
  %>

<jsp:include page="footer.jsp"/>

    <!-- Script Bootstrap -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>


  </body>

</html>
