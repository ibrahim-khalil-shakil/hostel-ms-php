<?php require_once('include/header.php'); ?>
<?php require_once('include/sidebar.php'); ?>

<!-- Content Wrapper. Contains page content -->
<div class="content-wrapper">
  <!-- Content Header (Page header) -->
  <div class="content-header">
    <div class="container-fluid">
      <div class="row mb-2">
        <div class="col-sm-6">
          <h1 class="m-0">Add Student Bill</h1>
        </div><!-- /.col -->
        <div class="col-sm-6">
          <ol class="breadcrumb float-sm-right">
            <li class="breadcrumb-item"><a href="<?= $base_url ?>dashboard">Home</a></li>
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
        <?php
          $student_id = $_GET['student_id'];
          $data=$mysqli->common_select_query("SELECT student.name,student.contact,
          facility.name as fac,facility.amount,facility.id
           FROM `student_facility`
            join student on student.id=student_facility.student_id
            join facility on facility.id=student_facility.facility_id
            where student_facility.student_id=$student_id 
            ");

          if (!empty($data['data']))
            $sfd = $data['data'];
          else {
            echo "<h2 class='text-danger text-center'>This url is not correct</h2>";
            exit;
          }
        ?>

          <div class="card card-danger">
            <form enctype="multipart/form-data" action="" method="post">
              <div class="card-header">
                <h3 class="card-title">Add Student Bill Details</h3>
              </div>
              <div class="card-body">
                <div class="row ">
                  <div class="col-sm-6">
                    <div class="form-group">
                      <label>Student:</label>
                      <select class="custom-select mr-sm-2" id="" name="student_id">
                        <?php
                            $data=$mysqli->common_select('student');
                            if(!$data['error']){
                              foreach($data['data'] as $dt){
                          ?>
                              <option <?= $student_id ==$dt->id?"selected":"disabled" ?> value="<?= $dt->id ?>"><?= $dt->name ?> (<?= $dt->contact?>)</option>
                          <?php } } ?>
                        </select>
                    </div>
                  </div>
                  <div class="col-sm-3">
                    <div class="form-group">
                      <label>Year:</label>
                      <select class="custom-select mr-sm-2" id="" name="bill_year">
                      <?php 
                        $year_start  = 2023;
                        $year_end = date('Y'); // current Year
                        $selected_year = date('Y');

                        for ($i_year = $year_start; $i_year <= $year_end; $i_year++) {
                            $selected = $selected_year == $i_year ? ' selected' : '';
                            echo '<option value="'.$i_year.'"'.$selected.'>'.$i_year.'</option>'."\n";
                        }
                    ?>
                        </select>
                    </div>
                  </div>
                  <div class="col-sm-3">
                    <div class="form-group">
                      <label>Month:</label>
                      <select class="custom-select mr-sm-2" id="" name="bill_month">
                      <?php
                        $selected_month = date('m'); //current month
                        for ($i_month = 1; $i_month <= 12; $i_month++) { 
                            $selected = $selected_month == $i_month ? ' selected' : '';
                            echo '<option value="'.$i_month.'"'.$selected.'>'. date('F', mktime(0,0,0,$i_month)).'</option>'."\n";
                        }
                      ?>
                        </select>
                    </div>
                  </div>
                  
                  <div class="col-sm-12">
                    
                  <table id="datatable" class="table table-bordered table-striped">
                      <thead>
                      <tr>
                        <th>#SL</th>
                        <th>Student</th>
                        <th>Facility</th>
                        <th>Action</th>
                      </tr>
                      </thead>
                      <tbody>
                        <?php
                          $data=$mysqli->common_select_query("SELECT student.name,student.contact,facility.name as fac,facility.amount,student_facility.id FROM `student_facility` join student on student.id=student_facility.student_id join facility on facility.id=student_facility.facility_id");
                            foreach($sfd as $d){
                        ?>
                              <tr>
                                <td><?= $d->id ?></td>
                                <td><?= $d->name ?> (<?= $d->contact ?>)</td>
                                <td><?= $d->fac ?> (<?= $d->amount ?>)</td>
                                <td>
                                
                                </td>
                              </tr>
                        <?php } ?>
                      </tbody>
                    </table>
                  </div>

                  <div class="col-sm-12">
                    <div class="form-group">
                      <button type="submit" class="btn btn-primary">Save</button>
                    </div>
                  </div>
                </div>
                <!-- Date dd/mm/yyyy -->

                <?php
                if ($_POST) {
                  foreach($_POST['facility_id'] as $fac){
                    $sd['facility_id']=$fac;
                    $sd['student_id']=$_POST['student_id'];
                    $rs = $mysqli->common_create('student_facility', $sd);
                  }
                  if (!$rs['error']) {
                    echo "<script>window.location='student_facility_view.php'</script>";
                  } else {
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
<script>
  function stu_fac(){
    var $stufac=
  }
</script>