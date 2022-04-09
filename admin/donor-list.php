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

  


 


  <!DOCTYPE html>
  <html lang="en">
  <head>
  <title>Smart City | Admin Blood Donor List</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Pooled Responsive web template, Bootstrap Web Templates, Flat Web Templates, Android Compatible web template, 
Smartphone Compatible web template, free webdesigns for Nokia, Samsung, LG, SonyEricsson, Motorola web design" />
<script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.min.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link rel="stylesheet" href="css/morris.css" type="text/css"/>
<link href="css/font-awesome.css" rel="stylesheet"> 
<script src="js/jquery-2.1.4.min.js"></script>
<link href='//fonts.googleapis.com/css?family=Roboto:700,500,300,100italic,100,400' rel='stylesheet' type='text/css'/>
<link href='//fonts.googleapis.com/css?family=Montserrat:400,700' rel='stylesheet' type='text/css'>
<link rel="stylesheet" href="css/icon-font.min.css" type='text/css' />
<link rel="stylesheet" href="css/font-awesome.css">
<link rel="stylesheet" href="css/post.css">
<link rel="stylesheet" href="css/bootstrap.min.css">
  <style>
		.errorWrap {
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #dd3d36;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
.succWrap{
    padding: 10px;
    margin: 0 0 20px 0;
    background: #fff;
    border-left: 4px solid #5cb85c;
    -webkit-box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
    box-shadow: 0 1px 1px 0 rgba(0,0,0,.1);
}
		</style>
  </head>
  <body>
  <?php include('includes/header.php');?>
  <div id="admin-content">
      <div class="container">
          <div class="row">
              <div class="col-md-10">
                  <h1 class="admin-heading">Donor List</h1>
              </div>
              <div class="col-md-2">
                  <a class="add-new" href="add-donor.php">Add Donor</a>
              </div>
              <div class="col-md-12">
                  <table class="content-table">
                      <thead>
                          <th>S.No.</th>
                          <th>Name</th>
                          <th>Email</th>
                          <th>Mobile</th>
                          <th>City</th>
                          <th>Location</th>
                          <th>Age</th>
                          <th>Blood Group</th>

                         
                         
                          <th>Delete</th>
                      </thead>
                      <tbody>
					  <?php $sql = "SELECT * from tblbdonor";
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
                            <td><?php echo htmlentities($result->Email);?></td>
                            <td><?php echo htmlentities($result->MobileNumber);?></td>
                            <td><?php echo htmlentities($result->City);?></td>
                            <td><?php echo htmlentities($result->Location);?></td>
                            <td><?php echo htmlentities($result->Age);?></td>
                            <td><?php echo htmlentities($result->Bgroup);?></td>

                           
						   
                             <td class='delete'><a onclick="return confirm('Are you sure ?')" href='delete-donor.php?id=<?php echo htmlentities($result->id);?>'><i class='fa fa-trash-o'></i></a></td>
                          </tr>
						  <?php $cnt=$cnt+1;} }?>  
                      </tbody>
                  </table>
                 
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
									<?php include('includes/footer.php');?>
							   <!--COPY rights end here-->

            </div>
                                <!--//content-inner-->
		                      <!--/sidebar-menu-->
				        	<?php include('includes/sidebarmenu.php');?>
							  <div class="clearfix"></div>
  </div>
  
  </body>
  </html>
  <?php } ?>
