<?php
// Verifica si el formulario de inicio de sesión ha sido enviado
require_once 'config.php';
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Conectarse a la base de datos
  $mysqli = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);

  // Verificar si la conexión fue exitosa
  if ($mysqli->connect_errno) {
    echo "Error al conectar a la base de datos: " . $mysqli->connect_error;
    exit();
  }

  // Obtener los valores ingresados en el formulario
  $user = $_POST["correo"];
  $contrasena = $_POST["password"];
  echo $contrasena;

  // Consultar la base de datos para verificar las credenciales
  $query = "SELECT * FROM usuario WHERE correo = '$user'";
  $result = $mysqli->query($query);

  // Verificar si se encontró un usuario con el correo proporcionado
  if ($result->num_rows === 1) {
    $usuario = $result->fetch_assoc();
    echo $usuario["password"];
    // Verificar la contraseña
    if (password_verify($contrasena, $usuario["password"])) {
      // Inicio de sesión exitoso, redirigir a la página de inicio
      header("Location: index.php");
      exit();
    } else {
      echo "Contraseña incorrecta";
    }
  } else {
    echo "Usuario no encontrado";
  }

  // Cerrar la conexión a la base de datos
  $mysqli->close();
}
?>
<!DOCTYPE html>
<html>

<head>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM" crossorigin="anonymous"></script>
  <link href="css.css" rel="stylesheet" />
</head>

<body>
  <section class="background-radial-gradient overflow-hidden h-100">
    <div class="container px-4 py-5 px-md-5 text-center text-lg-start my-5">
      <div class="row gx-lg-5 align-items-center mb-5">
        <div class="col-lg-6 mb-5 mb-lg-0" style="z-index: 10">
          <h1 class="my-5 display-5 fw-bold ls-tight" style="color: hsl(218, 81%, 95%)">
            GT-Solutions <br />
            <span style="color: hsl(218, 81%, 75%)">Internet para todos</span>
          </h1>
        </div>
        <div class="col-lg-6 mb-5 mb-lg-0 position-relative">
          <div id="radius-shape-1" class="position-absolute rounded-circle shadow-5-strong"></div>
          <div id="radius-shape-2" class="position-absolute shadow-5-strong"></div>
          <div class="card bg-glass text-center">
            <div class="card-body px-4 py-5 px-md-5">
            <img src="./img/logo.png" class="w-25" />
              <form method="POST" action="<?php echo $_SERVER["PHP_SELF"]; ?>" class="text-start">
                <div class="form-outline mb-4">
                  <input type="email" name="correo" required class="form-control" />
                  <label class="form-label" for="form3Example3">Correo electronico</label>
                </div>
                <div class="form-outline mb-4">
                  <input type="password" name="password" required class="form-control" />
                  <label class="form-label" for="form3Example4">Contraseña</label>
                </div>
                <button type="submit" class="btn btn-primary btn-block mb-4">
                  Iniciar sesion
                </button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
</body>
</html>