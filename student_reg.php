<?php require_once('include/header.php'); ?>
<?php require_once('include/sidebar.php'); ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Student Registration Form</h1>
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
                  <h3 class="card-title">Student's Information</h3>
                </div>
                <div class="card-body">
                  <div class="row ">
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Registration Number:</label>
                        <input type="text" name="reg_no" class="form-control" placeholder="Registration Number">
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>First Name:</label>
                        <input type="text" name="first_name" class="form-control" placeholder="First Name">
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Last Name:</label>
                        <input type="text" name="last_name" class="form-control" placeholder="Last Name">
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Gender:</label>
                        <input type="text" name="gender" class="form-control" placeholder="Male/Female">
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Contact No:</label>
                        <input type="text" name="contact_no" class="form-control" placeholder="+880">
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Email:</label>
                        <input type="email" name="email" class="form-control" placeholder="example@email.com">
                      </div>
                    </div>
                    <div class="col-sm-12">
                      <div class="form-group">
                        <label>Image:</label>
                        <input type="file" name="image" class="form-control" placeholder=".jpeg/.png">
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
// if($_POST){
//   $reg_no = $_POST['reg_no'];
//   $first_name = $_POST['first_name'];
//   $last_name = $_POST['last_name'];
//   $gender = $_POST['gender'];
//   $contact_no = $_POST['contact_no'];
 

  
//   $sql = $mysqli->common_create('student_registration',$_POST);
//   if(!$rs['error']){
//         echo "<script>window.location='view_student.php'</script>";
//       }else{
//           echo $rs['error'];
//       }
// }

  if($_POST){
    if($_FILES['image']['name']){
      $imgname=time().rand(1111,9999).'.'.pathinfo($_FILES['image']['name'], PATHINFO_EXTENSION);
      $rs=move_uploaded_file($_FILES['image']['tmp_name'],"upload/users/$imgname");
      if($rs)
        $_POST['image']=$imgname;
    }
    if($_POST['password']){
      $_POST['password']=sha1(md5($_POST['password']));
    }
      
    $rs=$mysqli->common_create('student_registration',$_POST);
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
