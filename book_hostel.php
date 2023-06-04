<?php require_once('include/header.php'); ?>
<?php require_once('include/sidebar.php'); ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0"> Book Hostel</h1>
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
                  <h3 class="card-title">Hostel Bookings</h3>
                </div>
                <div class="card-body">
                  <div class="row ">
                    <div class="col-sm-4">
                    <label>Room Type:</label>
                    <div class="form-group mb-4">
                        <select class="custom-select mr-sm-2" id="" name="room_type">
                            <option selected>Choose...</option>
                            <option value="AC">AC</option>
                            <option value="Non-AC">Non AC</option>
                        </select>
                    </div> 
                  </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Seater:</label>
                        <input type="text" name="seater" class="form-control" placeholder="Seater">
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Room No:</label>
                        <input type="text" name="room_no" class="form-control" placeholder="Room No.">
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Seat No:</label>
                        <input type="text" name="seat_no" class="form-control" placeholder="Seat No.">
                      </div>
                    </div>
                    <div class="col-sm-4">
                    <label>Start Date:</label>
                    <div class="form-group mb-4">
                        <input type="date" name="start_date" class="form-control" id="">
                    </div> 
                  </div>
                  <div class="col-sm-4">
                    <label>Total Duration</label>
                    <div class="form-group mb-4">
                        <select class="custom-select mr-sm-2" id="duration" name="duration">
                            <option selected>Choose...</option>
                            <option value="1">One Month</option>
                            <option value="2">Two Month</option>
                            <option value="3">Three Month</option>
                            <option value="4">Four Month</option>
                            <option value="5">Five Month</option>
                            <option value="6">Six Month</option>
                            <option value="7">Seven Month</option>
                            <option value="8">Eight Month</option>
                            <option value="9">Nine Month</option>
                            <option value="10">Ten Month</option>
                            <option value="11">Eleven Month</option>
                            <option value="12">Twelve Month</option>
                        </select>
                    </div> 
                  </div>
                    <div class="col-sm-4">
                    <label>Food Status</label>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="food" id="">
                        <label class="form-check-label" for=""> Required (Extra $100 Per Month) </label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="radio" name="food" id="" checked>
                        <label class="form-check-label" for="">Not Required</label>
                    </div>
                    </div>
                    <div class="col-sm-4">
                    <label>Facilities</label>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="gym" value="" id="">
                        <label class="form-check-label" for="">GYM (Extra $20 Per Month)</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="library" value="" id="" checked>
                        <label class="form-check-label" for="">LIBRARY (Extra $15 Per Month)</label>
                    </div>
                    <div class="form-check">
                        <input class="form-check-input" type="checkbox" name="indoor_games" value="" id="" checked>
                        <label class="form-check-label" for="">INDOOR GAMES (Extra $25 Per Month)</label>
                    </div>
                    </div>
                  <div class="col-sm-4">
                      <div class="form-group">
                        <label>Fess Per Month:</label>
                        <input type="text" name="fees_pm" class="form-control" placeholder="Amount">
                      </div>
                    </div>
                  <div class="col-sm-4">
                      <div class="form-group">
                        <label>Total Amount:</label>
                        <input type="text" name="total_fees" class="form-control" placeholder="Amount">
                      </div>
                    </div>
                  
                 


                  
                  <div class="card-header col-sm-12">
                  <h3 class="card-title">Personal Information</h3>
                </div>
                <div class="card-body">
                  <div class="row ">
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Reg. No:</label>
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
                        <label>Email:</label>
                        <input type="text" name="email" class="form-control" placeholder="example@email.com">
                      </div>
                    </div>
                    <div class="col-sm-4">
                      <div class="form-group">
                        <label>Contact No:</label>
                        <input type="text" name="contact_no" class="form-control" placeholder="+880">
                      </div>
                    </div>

                    <div class="card-header col-sm-12">
                  <h3 class="card-title">Address Information</h3>
                </div>
                <div class="col-sm-6">
                      <div class="form-group">
                        <label>Current Address:</label>
                        <textarea class="form-control" name="current_add" placeholder="Current Address"></textarea>
                      </div>
                    </div>
                <div class="col-sm-6">
                      <div class="form-group">
                        <label>Permanent Address:</label>
                        <textarea class="form-control" name="permanent_add" placeholder="Permanent Address"></textarea>
                      </div>
                    </div>
                    
                    <div class="col-sm-12">
                      <div class="form-group">
                        <button type="submit" class="btn btn-primary form-control">Book</button>
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
      
    $rs=$mysqli->common_create('book_hostel',$_POST);
    if(!$rs['error']){
      echo "<script>window.location='hostel_student.php'</script>";
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
