<?php require_once('include/header.php'); ?>
<?php require_once('include/sidebar.php'); ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Update Students Acc.</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?= $base_url?>dashboard">Home</a></li>
              <li class="breadcrumb-item active">Update</li>
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
                  <h3 class="card-title">Edit Students Information</h3>
                </div>
                <?php
                  $where['id']=$_GET['id'];
                  $data=$mysqli->common_select('student_registration','*',$where);
                 
                  if(!$data['error'] && count($data['data'])>0)
                    $d=$data['data'][0];
                  else{
                    echo "<h2 class='text-danger text-center'>This url is not correct</h2>";
                    exit;
                  }
                ?>
                <div class="card-body">
                  <div class="row ">
                    <div class="col-sm-4">
                    <div class="form-group">
                        <label>Registration Number:</label>
                        <input type="text" name="reg_no" class="form-control" placeholder="Registration Number" value="<?= $d->reg_no ?> ">
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>First Name:</label>
                        <input type="text" name="first_name" class="form-control" placeholder="First Name" value="<?= $d->first_name ?> ">
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Last Name:</label>
                        <input type="text" name="last_name" class="form-control" placeholder="Last Name" value="<?= $d->last_name ?> ">
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Gender:</label>
                        <input type="text" name="gender" class="form-control" placeholder="Male/Female" value="<?= $d->gender ?> ">
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Contact No:</label>
                        <input type="text" name="contact_no" class="form-control" placeholder="+880" value="<?= $d->contact_no ?> ">
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Email:</label>
                        <input type="email" name="email" class="form-control" placeholder="example@email.com" value="<?= $d->email ?> ">
                      </div>
                    </div>
                    <div class="col-sm-12">
                      <div class="form-group">
                        <label>Image:</label>
                        <input type="file" name="image" class="form-control" placeholder=".jpeg/.png" value="<?= $d->image ?> ">
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
    if($_FILES['image']['name']){
      $imgname=time().rand(1111,9999).'.'.pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
      $rs=move_uploaded_file($_FILES['image']['tmp_name'],"upload/users/$imgname");
      if($rs)
        $_POST['image']=$imgname;
    }
      
    $rs=$mysqli->common_update('student_registration',$_POST,$where);
    if(!$rs['error']){
      echo "<script>window.location='view_student.php'</script>";
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
