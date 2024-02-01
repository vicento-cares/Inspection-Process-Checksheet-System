<?php include 'plugins/navbar.php';?>
<?php include 'plugins/sidebar/checksheets-dcrib_bar.php';?>

<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0"><b>DCRIB Checksheets</b> (AME-045)</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="home.php">Home</a></li>
            <li class="breadcrumb-item active">Checksheets</li>
          </ol>
        </div><!-- /.col -->
      </div><!-- /.row -->
    </div><!-- /.container-fluid -->
  </div>
  <!-- /.content-header -->

  <!-- Main content -->
  <section class="content">
    <div class="container-fluid">
      <div class="row">
        <div class="col-sm-12">
          <div class="card card-gray-dark card-outline">
            <div class="card-header">
              <div class="card-title"><i class="fas fa-exclamation-circle fa-lg mr-1"></i><span class="h4">Pending Checksheets<span></div>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  <i class="fas fa-minus"></i>
                </button>
                <button type="button" class="btn btn-tool" data-card-widget="maximize">
                  <i class="fas fa-expand"></i>
                </button>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <div id="accordion_checksheets1_legend">
                <div class="card shadow">
                  <div class="card-header">
                    <h4 class="card-title w-100">
                      <a class="d-block w-100 text-dark" data-toggle="collapse" href="#collapseOneChecksheets1Legend">
                        DCRIB Status Legend
                      </a>
                    </h4>
                  </div>
                  <div id="collapseOneChecksheets1Legend" class="collapse" data-parent="#accordion_checksheets1_legend">
                    <div class="card-body">
                      <div class="row">
                        <div class="col-sm-6 col-lg-6 p-1 bg-danger"><center>Need Approval</center></div>
                        <div class="col-sm-6 col-lg-6 p-1 bg-warning"><center>Partially Approved</center></div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
              <div class="table-responsive" style="max-height: 500px; overflow: auto; display:inline-block;">
                <table id="pendingChecksheetsTable" class="table table-sm table-head-fixed text-nowrap table-hover">
                  <thead style="text-align: center;">
                    <tr>
                      <th>#</th>
                      <th>DCRIB No.</th>
                      <th>Inspection Date</th>
                      <th>Car Maker</th>
                      <th>Car Model</th>
                      <th>Line No.</th>
                      <th>Group</th>
                    </tr>
                  </thead>
                  <tbody id="pendingChecksheetsData" style="text-align: center;">
                    <tr style="cursor:pointer;" class="modal-trigger bg-danger" data-toggle="modal" data-target="#checksheets_1_modal">
                      <td>1</td>
                      <td>DCRIB-001</td>
                      <td>2023-08-01</td>
                      <td>Suzuki</td>
                      <td>YD1</td>
                      <td>5101</td>
                      <td>Shift A</td>
                    </tr>
                    <tr style="cursor:pointer;" class="modal-trigger bg-warning" data-toggle="modal" data-target="#checksheets_1_modal">
                      <td>1</td>
                      <td>DCRIB-002</td>
                      <td>2023-08-01</td>
                      <td>Suzuki</td>
                      <td>Y2R</td>
                      <td>5102</td>
                      <td>Shift A</td>
                    </tr>
                    <!-- <tr>
                      <td colspan="7" style="text-align:center;">
                        <div class="spinner-border text-dark" role="status">
                          <span class="sr-only">Loading...</span>
                        </div>
                      </td>
                    </tr> -->
                  </tbody>
                </table>
              </div>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
      <div class="row">
        <div class="col-sm-12">
          <div class="card card-gray-dark card-outline">
            <div class="card-header">
              <div class="card-title"><i class="fas fa-history fa-lg mr-1"></i><span class="h4">Recent Checksheets History<span></div>
              <div class="card-tools">
                <button type="button" class="btn btn-tool" data-card-widget="collapse">
                  <i class="fas fa-minus"></i>
                </button>
                <button type="button" class="btn btn-tool" data-card-widget="maximize">
                  <i class="fas fa-expand"></i>
                </button>
              </div>
            </div>
            <!-- /.card-header -->
            <div class="card-body">
              <div class="table-responsive" style="max-height: 500px; overflow: auto; display:inline-block;">
                <table id="recentChecksheetsHistoryTable" class="table table-sm table-head-fixed text-nowrap table-hover">
                  <thead style="text-align: center;">
                    <tr>
                      <th>#</th>
                      <th>DCRIB No.</th>
                      <th>Inspection Date</th>
                      <th>Car Maker</th>
                      <th>Car Model</th>
                      <th>Line No.</th>
                      <th>Group</th>
                    </tr>
                  </thead>
                  <tbody id="recentChecksheetsHistoryData" style="text-align: center;">
                    <tr>
                      <td colspan="7" style="text-align:center;">
                        <div class="spinner-border text-dark" role="status">
                          <span class="sr-only">Loading...</span>
                        </div>
                      </td>
                    </tr>
                  </tbody>
                </table>
              </div>
            </div>
            <!-- /.card-body -->
          </div>
          <!-- /.card -->
        </div>
        <!-- /.col -->
      </div>
      <!-- /.row -->
    </div>
  </section>
</div>

<?php include 'plugins/footer.php';?>
<?php include 'plugins/js/checksheets-dcrib_script.php';?>