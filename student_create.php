<?php require_once('include/header.php'); ?>
<?php require_once('include/sidebar.php'); ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Add Student</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?= $base_url?>dashboard">Home</a></li>
              <li class="breadcrumb-item active">Add New</li>
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
          <div class="col-md-12">

            <div class="card card-danger">
              <form enctype="multipart/form-data" action="" method="post">
                <div class="card-header">
                  <h3 class="card-title">Add New Student's Information</h3>
                </div>
                <div class="card-body">
                  <div class="row ">
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Name:</label>
                        <input type="text" name="name" class="form-control" placeholder="Full Name">
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Father's Name:</label>
                        <input type="text" name="father" class="form-control" placeholder="Full Name">
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Mother's Name:</label>
                        <input type="text" name="mother" class="form-control" placeholder="Full Name">
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Contact:</label>
                        <input type="text" name="contact" class="form-control" placeholder="+880"> 
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Guardian Contact:</label>
                        <input type="text" name="guardian_contact" class="form-control" placeholder="+880">
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>NID:</label>
                        <input type="text" name="nid_bc" class="form-control" placeholder="National Id Card Number">
                      </div>
                    </div>
                    <div class="col-sm-12">
                      <div class="form-group">
                        <button type="submit" class="btn btn-primary">Save</button>
                      </div>
                    </div>
                  </div>
                  <!-- Date dd/mm/yyyy -->

<?php

  if($_POST){
    $rs=$mysqli->common_create('student',$_POST);
    if(!$rs['error']){
      echo "<script>window.location='student_view.php'</script>";
    }else{
        echo $rs['error'];
    }
  }
?>
                </div>
                
              </form>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

          </div>
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
<?php require_once('include/footer.php'); ?>
