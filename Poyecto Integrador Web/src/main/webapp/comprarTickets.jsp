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
    <title>Comprar tickets</title>
  </head>
  <body>

<jsp:include page="header.jsp"/>

    <!--Main-->

    <main>
      <div class="row justify-content-center align-self-center" id="perfiles">
        <div class="col-sm-2" id="contenido">
          <div class="card" id="estudiante">
            <div class="card-body">
              <h5 class="card-title">Estudiante</h5>
              <p class="card-text">Tienen un descuento.</p>
              <p class="card-text">80%</p>
              <p class="card-text">* presentar documentacion</p>
            </div>
          </div>
        </div>
        <div class="col-sm-2">
          <div class="card" id="trainee">
            <div class="card-body">
              <h5 class="card-title">Trainee</h5>
              <p class="card-text">Tienen un descuento.</p>
              <p class="card-text">50%</p>
              <p class="card-text">* presentar documentacion</p>
            </div>
          </div>
        </div>
        <div class="col-sm-2">
          <div class="card" id="junior">
            <div class="card-body">
              <h5 class="card-title">Junior</h5>
              <p class="card-text">Tienen un descuento.</p>
              <p class="card-text">15%</p>
              <p class="card-text">* presentar documentacion</p>
            </div>
          </div>
        </div>
      </div>

      <!--Seccion Formulario-->

      <section class="container" id="formularioVenta">
        <div class="textos">
          <h5 class="textoMayuscPeque">VENTA</h5>
          <h5 class="textoMayuscGrande">VALOR DEL TICKET $200</h5>
        </div>
        <form class="row g-3 justify-content-center">
          <div class="col-md-4">
            <input
              type="text"
              class="form-control"
              id="inputName"
              placeholder="Nombre"
            />
          </div>
          <div class="col-md-4">
            <input
              type="text"
              class="form-control"
              id="inputSurname"
              placeholder="Apellido"
            />
          </div>
          <div class="col-md-8">
            <input
              type="email"
              class="form-control"
              id="inputEmail"
              placeholder="Correo"
            />
          </div>

          <div class="col-md-8 prueba">
            <div class="size">
              <label for="inputCant" class="form-label">Cantidad</label>
              <input
                type="text"
                class="form-control"
                id="inputCant"
                placeholder="Cantidad"
              />
            </div>
            <div class="size">
              <label for="inputCategory" class="form-label">Categoria</label>
              <select id="inputCategory" class="form-select">
                <option selected>Estudiante</option>
                <option>Trainee</option>
                <option>Junior</option>
              </select>
            </div>
          </div>

          <div class="col-md-8">
            <span class="form-control" id="inputCeleste"
              >Total a pagar: $0.00</span
            >
          </div>
          <div class="col-md-8 prueba">
            <div class="size">
              <button class="botonForm" id="botonReset" type="reset">
                Borrar
              </button>
            </div>
            <div class="size">
              <button class="botonForm" id="botonSubmit" type="submit">
                Resumen
              </button>
            </div>
          </div>
        </form>
      </section>
    </main>

<jsp:include page="footer.jsp"/>

    <!-- Script Bootstrap -->

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>


    <!--Script principal-->

    <script src="./js/script.js"></script>
  </body>
</html>