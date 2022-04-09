<?php 
include('includes/config.php');
$id=$_GET['id'];
$status=$_GET['status'];

$qul= "UPDATE tblapplyschool SET status =:status WHERE id=$id";
$query = $dbh -> prepare($sql);
$query -> bindParam(':status',$status, PDO::PARAM_STR);
// $query-> bindParam(':bcid',$bcid, PDO::PARAM_STR);
if ($query->execute([':id'=>$id])){
	header('location:school-student.php');
}

?>
