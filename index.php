<?php require 'process/login.php';

if (isset($_SESSION['username'])) {
  if ($_SESSION['role'] == 'admin') {
     header('location: page/admin/home.php');
     exit;
 }elseif($_SESSION['role'] == 'user'){
     header('location: page/user/home.php');
     exit;
 }
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>IProCS</title>

  <link rel="icon" href="dist/img/logo.ico" type="image/x-icon" />
  <!-- Google Font: Source Sans Pro -->
  <link rel="stylesheet" href="dist/css/font.min.css">
  <!-- Font Awesome -->
  <link rel="stylesheet" href="plugins/fontawesome-free/css/all.min.css">
  <!-- Theme style -->
  <link rel="stylesheet" href="dist/css/adminlte.min.css">
</head>

<body class="hold-transition login-page">
  <div class="login-box">
    <div class="login-logo">
      <img src="dist/img/logo.png" style="height:150px;">
      <h2><b>IProCS</b></h2>
    </div>
    <!-- /.login-logo -->
    <div class="card">
      <div class="card-body login-card-body">
        <p class="login-box-msg"><b>Sign in to start your session</b></p>

        <form action="<?=htmlspecialchars($_SERVER["PHP_SELF"]);?>" method="POST" id="login_form">
          <div class="input-group mb-3">
            <input type="text" class="form-control" id="username" name="username" placeholder="Username" autocomplete="off" required>
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-user"></span>
              </div>
            </div>
          </div>
          <div class="input-group mb-3">
            <input type="password" class="form-control" id="password" name="password" placeholder="Password" autocomplete="off" required>
            <div class="input-group-append">
              <div class="input-group-text">
                <span class="fas fa-lock"></span>
              </div>
            </div>
          </div>   
            <!-- /.col -->
            <div class="input-group mb-3">
              <button type="submit" class="btn btn-primary btn-block" name="Login" value="login">Sign In</button>
            </div>
            <!-- /.col -->
          </div>
        </form>
      </div>
    </div>
  </div>
</body>

<!-- jQuery -->
<script src="plugins/jquery/dist/jquery.min.js"></script>
<!-- Bootstrap 4 -->
<script src="plugins/bootstrap/js/bootstrap.bundle.min.js"></script>
<!-- AdminLTE App -->
<script src="dist/js/adminlte.min.js"></script>

</body>
</html>
