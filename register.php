<?php
require_once 'config.php';
// Verificar si el formulario de registro ha sido enviado
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  // Conectarse a la base de datos
  $mysqli = new mysqli(DB_HOST, DB_USERNAME, DB_PASSWORD, DB_NAME);

  // Verificar si la conexión fue exitosa
  if ($mysqli->connect_errno) {
    echo "Error al conectar a la base de datos: " . $mysqli->connect_error;
    exit();
  }

  // Obtener los valores ingresados en el formulario
  $nombre = $_POST["nombre"];
  $correo = $_POST["correo"];
  $contrasena = $_POST["contrasena"];

  // Verificar si el correo ya está registrado en la base de datos
  $query = "SELECT * FROM usuario WHERE correo = '$correo'";
  $result = $mysqli->query($query);

  if ($result->num_rows > 0) {
    echo "El correo ya está registrado";
    exit();
  }

  // Hashear la contraseña
  $contrasenaHash = password_hash($contrasena, PASSWORD_DEFAULT);

  // Insertar el nuevo usuario en la base de datos
  $query = "INSERT INTO usuario (nombre_usuario, correo, password) VALUES ('$nombre', '$correo', '$contrasenaHash')";
  if ($mysqli->query($query)) {
    echo "Usuario registrado exitosamente";
  } else {
    echo "Error al registrar el usuario: " . $mysqli->error;
  }

  // Cerrar la conexión a la base de datos
  $mysqli->close();
}
?>
<!DOCTYPE html>
<html>
<head>
  <title>Registro de usuarios</title>
</head>
<body>
  <h2>Registro de usuarios</h2>
  <form method="POST" action="<?php echo $_SERVER["PHP_SELF"]; ?>">
    <label for="nombre">Nombre:</label>
    <input type="text" name="nombre" required><br>

    <label for="correo">Correo electrónico:</label>
    <input type="email" name="correo" required><br>

    <label for="contrasena">Contraseña:</label>
    <input type="password" name="contrasena" required><br>

    <input type="submit" value="Registrarse">
  </form>
</body>
</html>
