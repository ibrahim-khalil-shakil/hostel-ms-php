<?php require_once('include/header.php'); ?>
<?php require_once('include/sidebar.php'); ?>

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Hostel Students</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="<?= $base_url?>dashboard">Home</a></li>
              <li class="breadcrumb-item active">List</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        
        <div class="card">
          <div class="card-header">
            <h3 class="card-title">All Hostel Students</h3>
          </div>
          <!-- /.card-header -->
          <div class="card-body">
            <table id="datatable" class="table table-bordered table-striped">
              <thead>
              <tr>
                <th>#SL</th>
                <th>Reg. No</th>
                <th>Student's Name</th>
                <th>Room No</th>
                <th>Seat No</th>
                <th>Room Type</th>
                <th>Staying From</th>
                <th>Contact</th>
                <th>Action</th>
              </tr>
              </thead>
              <tbody>
                <?php
                  $data=$mysqli->common_select('book_hostel');
                  if(!$data['error']){
                    foreach($data['data'] as $d){
                    
                ?>
                      <tr>
                        <td><?= $d->id ?></td>
                        <td><?= $d->reg_no ?></td>
                        <td><?= $d->first_name." ".$d->last_name ?></td>
                        <td><?= $d->room_no ?></td>
                        <td><?= $d->seat_no ?></td>
                        <td><?= $d->room_type?></td>
                        <td><?= $d->start_date?></td>
                        <td><?= $d->contact_no?></td>
                        <td>
                        <a href="view_hostel_student.php?id=<?php echo $d->id;?>" title="View Full Details"><i class="fa fa-expand"></i></a>
                          <a title="Delete" class="text-danger" href="hostel_delete.php?id=<?= $d->id ?>">
                            <i class="fa fa-trash"></i>
                          </a>
                        </td>
                      </tr>
                <?php
                    }
                  }
                ?>
              </tbody>
            </table>
          </div><!-- /.card-body -->
        </div>
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
<?php require_once('include/footer.php'); ?>

<!-- DataTables  & Plugins -->
<script src="<?= $base_url?>assets/plugins/datatables/jquery.dataTables.min.js"></script>
<script src="<?= $base_url?>assets/plugins/datatables-bs4/js/dataTables.bootstrap4.min.js"></script>
<script src="<?= $base_url?>assets/plugins/datatables-responsive/js/dataTables.responsive.min.js"></script>
<script src="<?= $base_url?>assets/plugins/datatables-responsive/js/responsive.bootstrap4.min.js"></script>
<script src="<?= $base_url?>assets/plugins/datatables-buttons/js/dataTables.buttons.min.js"></script>
<script src="<?= $base_url?>assets/plugins/datatables-buttons/js/buttons.bootstrap4.min.js"></script>
<script src="<?= $base_url?>assets/plugins/jszip/jszip.min.js"></script>
<script src="<?= $base_url?>assets/plugins/pdfmake/pdfmake.min.js"></script>
<script src="<?= $base_url?>assets/plugins/pdfmake/vfs_fonts.js"></script>
<script src="<?= $base_url?>assets/plugins/datatables-buttons/js/buttons.html5.min.js"></script>
<script src="<?= $base_url?>assets/plugins/datatables-buttons/js/buttons.print.min.js"></script>
<script src="<?= $base_url?>assets/plugins/datatables-buttons/js/buttons.colVis.min.js"></script>

<script>
  $(function () {
    $("#datatable").DataTable({
      "responsive": true, "lengthChange": false, "autoWidth": false,
      "buttons": ["excel", "pdf", "colvis"]
    }).buttons().container().appendTo('#datatable_wrapper .col-md-6:eq(0)');
   
  });
</script>