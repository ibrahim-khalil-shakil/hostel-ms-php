 <!-- Main Sidebar Container -->
 <aside class="main-sidebar sidebar-dark-primary elevation-4">
   <!-- Brand Logo -->
   <a href="dashboard.php" class="brand-link">
     <img src="<?= $base_url ?>assets/dist/img/AdminLTELogo.png" alt="AdminLTE Logo" class="brand-image img-circle elevation-3" style="opacity: .8">
     <span class="brand-text font-weight-light">AdminLTE 3</span>
   </a>

   <!-- Sidebar -->
   <div class="sidebar">
     <!-- Sidebar user panel (optional) -->
     <div class="user-panel mt-3 pb-3 mb-3 d-flex">
       <div class="image">
         <?php
          if ($_SESSION['image']) {
          ?>
           <img src="<?= $base_url ?>upload/users/<?= $_SESSION['image'] ?>" class="img-circle elevation-2" alt="User Image">
         <?php } else { ?>
           <img src="<?= $base_url ?>assets/dist/img/user2-160x160.jpg" class="img-circle elevation-2" alt="User Image">
         <?php } ?>
       </div>
       <div class="info">
         <a href="#" class="d-block"><?= $_SESSION['username'] ?></a>
       </div>
     </div>

     <!-- SidebarSearch Form -->
     <div class="form-inline">
       <div class="input-group" data-widget="sidebar-search">
         <input class="form-control form-control-sidebar" type="search" placeholder="Search" aria-label="Search">
         <div class="input-group-append">
           <button class="btn btn-sidebar">
             <i class="fas fa-search fa-fw"></i>
           </button>
         </div>
       </div>
     </div>

     <!-- Sidebar Menu -->
     <nav class="mt-2">
       <ul class="nav nav-pills nav-sidebar flex-column" data-widget="treeview" role="menu" data-accordion="false">
         <!-- Add icons to the links using the .nav-icon class
               with font-awesome or any other icon font library -->

         <li class="nav-item">
           <a href="<?= $base_url ?>dashboard.php" class="nav-link ">
             <i class="nav-icon fas fa-tachometer-alt"></i>
             <p> Dashboard</p>
           </a>
         </li>
         <li class="nav-item">
           <a href="<?= $base_url ?>room_view.php" class="nav-link" id="manage-rooms-link">
             <i class="fa-solid fa-house-chimney-window nav-icon"></i>
             <p>Room</p>
           </a>
         </li>
         <li class="nav-item">
           <a href="<?= $base_url ?>seat_view.php" class="nav-link">
             <i class="fas fa-bed nav-icon"></i>
             <p>Seat</p>
           </a>
         </li>
         <li class="nav-item">
           <a href="<?= $base_url ?>facility_view.php" class="nav-link" id="manage-rooms-link">
             <i class="fa-solid fa-shapes nav-icon"></i>
             <p>Facility</p>
           </a>
         </li>
         <li class="nav-item ">
           <a href="<?= $base_url ?>student_view.php" class="nav-link">
             <i class=" fa-solid fa-person nav-icon"></i>
             <p>Student</p>
           </a>
         </li>
         <li class="nav-item ">
           <a href="<?= $base_url ?>student_facility_view.php" class="nav-link">
             <i class="fa-solid fa-diamond nav-icon"></i>
             <p>Student Facility</p>
           </a>
         </li>
         <li class="nav-item ">
           <a href="<?= $base_url ?>user_view.php" class="nav-link">
             <i class="nav-icon fas fa-users"></i>
             <p>User</p>
           </a>
         </li>
         <li class="nav-item ">
           <a href="<?= $base_url ?>account_head_view.php" class="nav-link">
             <i class="fa-sharp fa-solid fa-award nav-icon"></i>
             <p>Account Head</p>
           </a>
         </li>
         <li class="nav-item dropdown">
           <a class="nav-link dropdown-toggle" href="#" id="dropdownMenu" role="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
             <i class="fa-sharp fa-solid fa-money-bill-transfer nav-icon"></i>
             Transaction
           </a>
           <ul class="dropdown-menu sidebarcolor" aria-labelledby="dropdownMenu">
             <li class="dropdown-item nav-item sidebarcolorhover" href="<?= $base_url ?>transaction_view.php">
               <a href="<?= $base_url ?>income_view.php" class="nav-link">
                 <i class="fa-solid fa-sack-dollar nav-icon"></i>
                 <p>Income</p>
               </a>
             </li>
             <li class="dropdown-item nav-item sidebarcolorhover" href="<?= $base_url ?>transaction_view.php">
               <a href="<?= $base_url ?>expense_view.php" class="nav-link">
                 <i class="fa-solid fa-hand-holding-dollar nav-icon"></i>
                 <p>Expense</p>
               </a>
             </li>
           </ul>
         </li>




       </ul>
     </nav>
     <!-- /.sidebar-menu -->
   </div>
   <!-- /.sidebar -->
 </aside>

 <style>
   .sidebarcolor {
     background-color: #343A40;
   }

   .sidebarcolorhover:hover {
     background-color: #494E53;
   }
 </style>