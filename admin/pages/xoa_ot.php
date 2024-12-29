<?php
$id=$_GET['x'];
global conn;
$sql="delete from cham_bu where id='$id'";
$ketqua=mysqli_query($conn, $sql) or die("Câu truy vấn sai!");
if($ketqua==true)
{
     header("Location:ql_ot.php");
}
?>