<?php
session_start();
error_reporting(0);
include('includes/config.php');
if(isset($_POST['submit']))
{
$name=$_POST['name'];
$dob=$_POST['dob'];
$reg=$_POST['reg'];
$gender=$_POST['gender'];
$mobile=$_POST['mobile'];
$fname=$_POST['fname'];
$fnid=$_POST['fnid'];
$mname=$_POST['mname'];
$mnid=$_POST['mnid'];
$school=$_POST['school'];
$classname=$_POST['classname'];

$sql="INSERT INTO tblapplyschool(Name,DOB,DOB_Reg,Gender,Mobile,F_name,F_nid,M_name,M_nid,School_name,Class_name) VALUES(:name,:dob,:reg,:gender,:mobile,:fname,:fnid,:mname,:mnid,:school,:classname)";
$query = $dbh->prepare($sql);
$query->bindParam(':name',$name,PDO::PARAM_STR);
$query->bindParam(':dob',$dob,PDO::PARAM_STR);
$query->bindParam(':reg',$reg,PDO::PARAM_STR);
$query->bindParam(':gender',$gender,PDO::PARAM_STR);
$query->bindParam(':mobile',$mobile,PDO::PARAM_STR);
$query->bindParam(':fname',$fname,PDO::PARAM_STR);
$query->bindParam(':fnid',$fnid,PDO::PARAM_STR);
$query->bindParam(':mname',$mname,PDO::PARAM_STR);
$query->bindParam(':mnid',$mnid,PDO::PARAM_STR);
$query->bindParam(':school',$school,PDO::PARAM_STR);
$query->bindParam(':classname',$classname,PDO::PARAM_STR);

$query->execute();
$lastInsertId = $dbh->lastInsertId();
if($lastInsertId)
{
$msg=" Successfully submited";
}
else
{
$error="Something went wrong. Please try again";
}

}

?>
<!DOCTYPE HTML>
<html>
<head>
<title>Smart City || Smart Sylhet</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="Smart City Management System In PHP" />
<script type="applijewelleryion/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
<link href="css/bootstrap.css" rel='stylesheet' type='text/css' />
<link href="css/style.css" rel='stylesheet' type='text/css' />
<link href='//fonts.googleapis.com/css?family=Open+Sans:400,700,600' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Roboto+Condensed:400,700,300' rel='stylesheet' type='text/css'>
<link href='//fonts.googleapis.com/css?family=Oswald' rel='stylesheet' type='text/css'>
<link href="css/font-awesome.css" rel="stylesheet">
<link rel="stylesheet" href="css/styles.css">
<link rel="stylesheet" href="css/styls.css">
<!-- Custom Theme files -->
<script src="js/jquery-1.12.0.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--animate-->
<link href="css/animate.css" rel="stylesheet" type="text/css" media="all">
<script src="js/wow.min.js"></script>
	<script>
		 new WOW().init();
	</script>
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
<!-- top-header -->
<div class="top-header">
<?php include('includes/header.php');?>
<div class="bannar">
	<img src="images/s2.PNG" alt="">
</div>
<!--- /banner-1 ---->
<!--- privacy ---->
<div class="privacy">
	<div class="container">
		<div class="regfrom">
		<form name="enquiry" method="post">
		 <?php if($error){?><div class="errorWrap"><strong>ERROR</strong>:<?php echo htmlentities($error); ?> </div><?php }
				else if($msg){?><div class="succWrap"><strong>SUCCESS</strong>:<?php echo htmlentities($msg); ?> </div><?php }?>
				<div class="desi">
				   <h3>SCHOOL ADMISSION FORM</h3>
				</div>
	       
			 <div class="from">
					<label for="">Student name</label>
					<input type="text" name="name" class="form-control" placeholder="Full name" required>
			  </div>
			  <div class="from">
					<label for="">Date of Birth</label>
					<input type="date" name="dob" class="form-control" placeholder="" required>
			  </div>
			  <div class="from">
					<label for="">Birth Registration Number</label>
					<input type="text" name="reg" class="form-control" placeholder="17-digits registration number" required>
			  </div>
              <div class="ques">
					<label>Gender</label>
						<div class="redies">
							<label><input type="radio" class="option-input-radio"  value="Male" name="gender" >Male</label>
							<label><input type="radio" class="option-input-radio"  value="Femele" name="gender" >Femele</label>
                            <label><input type="radio" class="option-input-radio"  value="Other" name="gender" >Other</label>
   					   </div>
			  </div>
			  <div class="from">
					<label for="">mobile number</label>
					<input type="text" name="mobile" class="form-control" placeholder="Moblie Number" required>
			  </div>
			  <div class="from">
					<label for="">Father's name </label>
					<input type="text" name="fname" class="form-control" placeholder="father's name" required>
			  </div>
			  <div class="from">
					<label for="">NID Number</label>
					<input type="text" name="fnid" class="form-control" placeholder="NID number" required>
			  </div>
              <div class="from">
					<label for="">Mother's name </label>
					<input type="text" name="mname" class="form-control" placeholder="mother's name" required>
			  </div>
			  <div class="from">
					<label for="">NID Number</label>
					<input type="text" name="mnid" class="form-control" placeholder="NID number" required>
			  </div>
              <div class="from">
					<label for="">School Name</label>
					<input type="text" name="school" class="form-control" placeholder="School name" required>
			  </div>
              <div class="from">
			 			  <label>Class Name</label>
                          <select class="form-control" name="classname" >
						      <option></option>
                              <option>Class-1</option>
                              <option>Class-2</option>
                              <option>Class-3</option>
                              <option>Class-4</option>
                              <option>Class-5</option>
                              <option>Class-6</option>
                              <option>Class-7</option>
                              <option>Class-8</option>
                              <option>Class-9</option>
                              <option>Class-10</option>
                              
                          </select>
			  </div>

							<?php if($_SESSION['login']){?>
						<class="spe" align="center">
						
							<button type="submit" name="submit" class="btn-primary btn">Submit</button>
						</class=>
						<?php } else {?>
							<class="sigi" align="center" style="margin-top: 1%">
								
							<a href="#" data-toggle="modal" data-target="#myModal4" class="btn-primary btn">Submit</a></class=>
							<?php } ?>

							
			 
			</form>
		</div>

	</div>
</div>
<!--- /privacy ---->
<!--- footer-top ---->
<!--- /footer-top ---->
<?php include('includes/footer.php');?>
<!-- signup -->
<?php include('includes/signup.php');?>
<!-- //signu -->
<!-- signin -->
<?php include('includes/signin.php');?>
<!-- //signin -->
<!-- write us -->
<?php include('includes/write-us.php');?>
</body>

</html>


