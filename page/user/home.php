<?php include 'plugins/navbar.php';?>
<?php include 'plugins/sidebar/home_bar.php';?>

<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0"><b>Home</b></h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="home.php">Home</a></li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-lg-6 col-6">
          <!-- small box -->
          <div class="small-box bg-success">
            <div class="inner mb-3">
              <h4><b>DCRIB, IPDCTM, DIRR</b></h4>
              <p>All Checksheets</p>
            </div>
            <div class="icon">
              <i class="ion ion-document-text"></i>
            </div>
            <a data-toggle="modal" data-target="#checksheets_step_1_modal" class="small-box-footer" style="cursor:pointer;">Make Checksheets <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-6 col-6">
          <!-- small box -->
          <div class="small-box bg-danger">
            <div class="inner mb-3">
              <h4><b>DCRIB, IPDCTM, DIRR</b></h4>
              <p>Skip Checksheets</p>
            </div>
            <div class="icon">
              <i class="ion ion-forward"></i>
            </div>
            <a data-toggle="modal" data-target="#checksheets_skip_modal" class="small-box-footer" style="cursor:pointer;">Skip Checksheets <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
      </div>
    </div>
  </section>
</div>

<?php include 'plugins/footer.php';?>
<?php include 'plugins/js/home_script.php';?>