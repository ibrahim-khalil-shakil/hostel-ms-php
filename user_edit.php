<?php require_once('include/header.php'); ?>
<?php require_once('include/sidebar.php'); ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Users</h1>
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
                  <h3 class="card-title">User Information</h3>
                </div>
                <?php
                  $where['id']=$_GET['id'];
                  $data=$mysqli->common_select('tbl_users','*',$where);
                 
                  if(!$data['error'] && count($data['data'])>0)
                    $d=$data['data'][0];
                  else{
                    echo "<h2 class='text-danger text-center'>This url is not correct</h2>";
                    exit;
                  }
                ?>
                <div class="card-body">
                  <div class="row ">
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>User Name:</label>
                        <input type="text" value="<?= $d->name ?>" name="name" class="form-control">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>User Email:</label>
                        <input type="email" value="<?= $d->email ?>" name="email" class="form-control">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Contact No:</label>
                        <input type="text" value="<?= $d->contact_no ?>" name="contact_no" class="form-control">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Password:</label>
                        <input type="password" name="password" class="form-control">
                      </div>
                    </div>
                    <div class="col-sm-6">
                      <div class="form-group">
                        <label>Image:</label>
                        <input type="file" name="image" class="form-control">
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
    if(trim($_POST['password']) !=""){
      $_POST['password']=sha1(md5($_POST['password']));
    }else{
      unset($_POST['password']);
    }
      
    $rs=$mysqli->common_update('tbl_users',$_POST,$where);
    if(!$rs['error']){
      echo "<script>window.location='user_list.php'</script>";
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
