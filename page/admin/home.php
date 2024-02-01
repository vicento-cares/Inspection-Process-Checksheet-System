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
        <div class="col-lg-4 col-6">
          <!-- small box -->
          <div class="small-box bg-orange">
            <div class="inner mb-3">
              <h4><b>DCRIB</b></h4>
              <p>Daily Check Record for Dimension, Appearance, <br>Assurance Inspection Board</p>
            </div>
            <div class="icon">
              <i class="ion ion-ios-list"></i>
            </div>
            <a href="checksheets-dcrib.php" class="small-box-footer fix-bottom" style="cursor:pointer;">DCRIB Checksheets <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-6">
          <!-- small box -->
          <div class="small-box bg-teal">
            <div class="inner mb-3">
              <h4><b>IPDCTM</b></h4>
              <p>Inspection Process Daily Checksheet <br>of Tools and Materials</p>
            </div>
            <div class="icon">
              <i class="ion ion-ios-paper"></i>
            </div>
            <a href="checksheets-ipdctm.php" class="small-box-footer" style="cursor:pointer;">IPCDTM Checksheets <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
        <div class="col-lg-4 col-6">
          <!-- small box -->
          <div class="small-box bg-success">
            <div class="inner mb-3">
              <h4><b>DIRR</b></h4>
              <p>Daily Inspection Records of Ruler <br>(Linear Scale)</p>
            </div>
            <div class="icon">
              <i class="ion ion-document-text"></i>
            </div>
            <a href="checksheets-dirr.php" class="small-box-footer" style="cursor:pointer;">DIRR Checksheets <i class="fas fa-arrow-circle-right"></i></a>
          </div>
        </div>
        <!-- ./col -->
      </div>
    </div>
  </section>
</div>

<?php include 'plugins/footer.php';?>
<?php include 'plugins/js/home_script.php';?>