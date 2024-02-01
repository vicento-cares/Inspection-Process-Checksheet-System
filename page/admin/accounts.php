<?php include 'plugins/navbar.php';?>
<?php include 'plugins/sidebar/accounts_bar.php';?>
<!-- Main Sidebar Container -->
<section class="content">
    <div class="container-fluid">
        <!-- Content Wrapper. Contains page content -->
        <div class="content-wrapper">
            <!-- Content Header (Page header) -->
            <div class="content-header">
                <div class="container-fluid">
                    <div class="row mb-2">
                        <div class="col-sm-6">
                            <h1 class="m-0">Account Management</h1>
                        </div><!-- /.col -->
                        <div class="col-sm-6">
                            <ol class="breadcrumb float-sm-right">
                                <li class="breadcrumb-item"><a href="dashboard.php">Home</a></li>
                                <li class="breadcrumb-item active">Account Management</li>
                            </ol>
                        </div><!-- /.col -->
                    </div><!-- /.row -->
                </div><!-- /.container-fluid -->
            </div>
            <!-- /.content-header -->

            <!-- Main content -->
            <div class="col-12">
                <div class="card">
                    <div class="card-header pb-3">
                        <div class="d-flex justify-content-end">
                            <div class="p-2">
                                <input type="text" id="id_number_search" class="form-control" autocomplete="off"
                                    placeholder="ID No.">
                            </div>
                            <div class="p-2">
                                <input type="text" id="full_name_search" class="form-control" autocomplete="off"
                                    placeholder="Full Name">
                            </div>
                            <div class="p-2">
                                <select id="user_type_search" class="form-control">
                                    <option value="">Select User Type</option>
                                    <option value="admin">Admin</option>
                                    <option value="user">User</option>
                                </select>
                            </div>
                            <div class="p-2">
                                <button class="btn btn-primary" id="searchReqBtn" onclick="search_accounts()">Search <i
                                        class="fas fa-search"></i></button>
                            </div>
                        </div>
                    </div>
                    <!-- /.card-header -->
                    <div class="card-body table-responsive p-0" style="height: 500px;">
                        <table class="table table-head-fixed text-nowrap table-hover" id="accounts_table">
                            <thead style="text-align:center;">
                                <th> # </th>
                                <th> ID No. </th>
                                <th> Username </th>
                                <th> Full Name </th>
                                <th> Line No. </th>
                                <th> User Type </th>
                            </thead>
                            <tbody id="list_of_accounts" style="text-align:center;"></tbody>
                        </table>
                        <div class="row">
                            <div class="col-6"></div>
                            <div class="col-6">
                                <div class="spinner" id="spinner" style="display:none;">
                                    <div class="loader float-sm-center"></div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <!-- /.card-body -->
                </div>
                <!-- /.card -->
            </div>
        </div>
        <!-- /.row -->
    </div>
    </div>
</section>

<?php include 'plugins/footer.php';?>
<?php include 'plugins/js/accounts_script.php'; ?>