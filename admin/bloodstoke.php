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
  <title>Smart City | Admin Blood </title>
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
<link rel="stylesheet" href="css/news.css">
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
              
                  <h1 class="admin-heading">Blood Stoke List</h1>
              </div>
              
              <div  id="table"  class="col-md-12">
                  <table class="content-table">
                      <thead>
                          <th>Name</th>
                          <th>Quality</th>
                       
                      </thead>
                      <tbody>
	
                          <tr>
                            <td>A+</td>
                            <td>
                            <?php 
                            $q=$dbh->query("SELECT * FROM tblbbstoke WHERE bgroup='A+'");
                            echo $row=$q->rowcount();
                            ?>
                            </td>
                          </tr>
                          <tr>
                            <td>A-</td>
                            <td>
                            <?php 
                            $q=$dbh->query("SELECT * FROM tblbbstoke WHERE bgroup='A-'");
                            echo $row=$q->rowcount();
                            ?>
                            </td>
                          </tr>
                          <tr>
                            <td>B+</td>
                            <td>
                            <?php 
                            $q=$dbh->query("SELECT * FROM tblbbstoke WHERE bgroup='B+'");
                            echo $row=$q->rowcount();
                            ?>
                            </td>
                          </tr>
                          <tr>
                            <td>B-</td>
                            <td>
                            <?php 
                            $q=$dbh->query("SELECT * FROM tblbbstoke WHERE bgroup='B-'");
                            echo $row=$q->rowcount();
                            ?>
                            </td>
                          </tr>
                          <tr>
                            <td>AB+</td>
                            <td>
                            <?php 
                            $q=$dbh->query("SELECT * FROM tblbbstoke WHERE bgroup='AB+'");
                            echo $row=$q->rowcount();
                            ?>
                            </td>
                          </tr>
                          <tr>
                            <td>AB-</td>
                            <td>
                            <?php 
                            $q=$dbh->query("SELECT * FROM tblbbstoke WHERE bgroup='AB-'");
                            echo $row=$q->rowcount();
                            ?>
                            </td>
                          </tr>
                          <tr>
                            <td>O+</td>
                            <td>
                            <?php 
                            $q=$dbh->query("SELECT * FROM tblbbstoke WHERE bgroup='O+'");
                            echo $row=$q->rowcount();
                            ?>
                            </td>
                          </tr>
                          <tr>
                            <td>O-</td>
                            <td>
                            <?php 
                            $q=$dbh->query("SELECT * FROM tblbbstoke WHERE bgroup='O-'");
                            echo $row=$q->rowcount();
                            ?>
                            </td>
                          </tr>
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
