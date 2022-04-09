<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(strlen($_SESSION['alogin'])==0)
	{	
header('location:index.php');
}
else{ 
	?>
<!DOCTYPE HTML>
<html>
<head>
<title>Smart City || Admin Manage News</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<!-- Bootstrap Core CSS -->
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<!-- Custom CSS -->
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/morris.css" type="text/css"/>
<!-- Graph CSS -->
<link href="css/font-awesome.css" rel="stylesheet"> 
<!-- jQuery -->
<script src="js/jquery-2.1.4.min.js"></script>
<!-- //jQuery -->
<!-- tables -->
<link rel="stylesheet" type="text/css" href="css/table-style.css" />
<link rel="stylesheet" type="text/css" href="css/basictable.css" />
<script type="text/javascript" src="js/jquery.basictable.min.js"></script>
<script type="text/javascript">
    $(document).ready(function() {
      $('#table').basictable();

      $('#table-breakpoint').basictable({
        breakpoint: 768
      });

      $('#table-swap-axis').basictable({
        swapAxis: true
      });

      $('#table-force-off').basictable({
        forceResponsive: false
      });

      $('#table-no-resize').basictable({
        noResize: true
      });

      $('#table-two-axis').basictable();

      $('#table-max-height').basictable({
        tableWrapper: true
      });
    });
</script>
<!-- //tables -->
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<!-- lined-icons -->
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<!-- //lined-icons -->
</head>
  <body>
  <div class="page-container">
   <!--/content-inner-->
<div class="left-content">
	   <div class="mother-grid-inner">
            <!--header start here-->
  <?php include('includes/header.php');?>
 <div class="clearfix"> </div>	
				</div>
<!--heder end here-->

<div class="agile-grids">	
				<!-- tables -->
				<div class="agile-tables">
					<div class="w3l-table-info">
				
				<div class="search">
    <h2>School Student List</h2>
    <form method="POST" class="d-flex">
        <input class="form-control me-2" type="search" name="keyword" placeholder="Search" required="required">
        <button class="btn btn-outline-success" type="submit" name="search">Search</button>
      </form>
</div>  
<?php if(isset($_POST['search'])){  ?>
  

<div class="tables">
   <table class="contant-table">
	  <thead class="contant-head">
		<tr>
			<th>S.N</th>
			<th>Name</th>
			<th>MobileNumber</th>
			<th>Father's Name</th>
			<th>Mother's Name</th>
			<th>School Name</th>
			<th>Class Name</th>
			<th>Date of barth</th>
            <th>Date</th>
			<th>Status</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>
	

						<?php $keyword= $_POST['keyword'];
						$sql = "SELECT * from   tblapplyschool WHERE School_name LIKE '%$keyword%' ";
						$query = $dbh -> prepare($sql);
						
						$query->execute();
						$results=$query->fetchAll(PDO::FETCH_OBJ);
						$cnt=1;
						if($query->rowCount() > 0)
						{
						foreach($results as $result)
						{				?>	
                          <tr>
						  <td><?php echo htmlentities($cnt);?></td>
                            <td><?php echo htmlentities($result->Name);?></td>
                            <td><?php echo htmlentities($result->Mobile);?></td>
							
                            <td><?php echo htmlentities($result->F_name);?></td>
                            <td><?php echo htmlentities($result->M_name);?></td>
							<td><?php echo htmlentities($result->School_name);?></td>
							<td><?php echo htmlentities($result->Class_name);?></td>
							<td><?php echo htmlentities($result->DOB);?></td>
                            <td><?php echo htmlentities($result->post_date);?></td>

                            <td>
					<?php if($result->status==0){
						echo 'enable';
					}
					elseif($result->status==1){
						echo 'disable';
					}
					else{
						echo 'panding';
					}
					
					?>
				</td>
				<td class='edit delete'><a href='student-details.php?id=<?php echo htmlentities($result->id);?>'>View</a>
				<a onclick="return confirm('Are you sure ?')" href='delete-studentslist.php?id=<?php echo htmlentities($result->id);?>'><i class='fa fa-trash-o'></i></a></td>
                            
                          </tr>
						  <?php $cnt=$cnt+1;} }?>  



	
	
	</tbody>
</table>
 </div>
<?php }else{ ?>
    <div class="tables">
<table class="contant-table">
	<thead class="alert-info">
		<tr>
			<th>S.N</th>
			<th>Name</th>
			<th>MobileNumber</th>
			<th>Father's Name</th>
			<th>Mother's Name</th>
			<th>School Name</th>
			<th>Class Name</th>
			<th>Date of barth</th>
            <th>Date</th>
			<th>Status</th>
			<th>Action</th>
		</tr>
	</thead>
	<tbody>
		<?php $sql = "SELECT * from  tblapplyschool";
			$query = $dbh -> prepare($sql);
						
			$query->execute();
			$results=$query->fetchAll(PDO::FETCH_OBJ);
			$cnt=1;
			if($query->rowCount() > 0)
			{
			foreach($results as $result)
			{				?>	
			  <tr>
			  <td><?php echo htmlentities($cnt);?></td>
                            <td><?php echo htmlentities($result->Name);?></td>
                            <td><?php echo htmlentities($result->Mobile);?></td>
							
                            <td><?php echo htmlentities($result->F_name);?></td>
                            <td><?php echo htmlentities($result->M_name);?></td>
							<td><?php echo htmlentities($result->School_name);?></td>
							<td><?php echo htmlentities($result->Class_name);?></td>
							<td><?php echo htmlentities($result->DOB);?></td>
                            <td><?php echo htmlentities($result->post_date);?></td>
                <td>
					<?php if($result->status==0){
						echo 'enable';
					}
					elseif($result->status==1){
						echo 'disable';
					}
					else{
						echo 'panding';
					}
					
					?>
				</td>
				<td class='edit delete'><a href='student-details.php?id=<?php echo htmlentities($result->id);?>'>View</a>
				<a onclick="return confirm('Are you sure ?')" href='delete-studentslist.php?id=<?php echo htmlentities($result->id);?>'><i class='fa fa-trash-o'></i></a></td>
				
			  </tr>
			  <?php $cnt=$cnt+1;} }?>  

	</tbody>
</table>
</div>
<?php }?>

          </div>
		  </div>
		  </div>
                                <!-- script-for sticky-nav -->
									<script>
										$(document).ready(function() {
											var navoffeset=$(".header-main").offset().top;
											$(window).scroll(function(){
											var scrollpos=$(window).scrollTop(); 
											if(scrollpos >=navoffeset){
												$(".header-main").addClass("fixed");
												}else{
												$(".header-main").removeClass("fixed");
												}
										});
										
									});
									</script>
								<!-- /script-for sticky-nav -->
							    <!--inner block start here-->
									<div class="inner-block">

									</div>
							   <!--inner block end here-->
							   <!--copy rights start here-->
							   <?php include('includes/sidebarmenu.php');?>
							  <div class="clearfix"></div>		
							</div>
							<script>
							var toggle = true;
										
							$(".sidebar-icon").click(function() {                
							  if (toggle)
							  {
								$(".page-container").addClass("sidebar-collapsed").removeClass("sidebar-collapsed-back");
								$("#menu span").css({"position":"absolute"});
							  }
							  else
							  {
								$(".page-container").removeClass("sidebar-collapsed").addClass("sidebar-collapsed-back");
								setTimeout(function() {
								  $("#menu span").css({"position":"relative"});
								}, 400);
							  }
											
											toggle = !toggle;
										});
							</script>
<!--js -->
<script src="js/jquery.nicescroll.js"></script>
<script src="js/scripts.js"></script>
<!-- Bootstrap Core JavaScript -->
   <script src="js/bootstrap.min.js"></script>
   <!-- /Bootstrap Core JavaScript -->	   

</body>
</html>
<?php } ?>
