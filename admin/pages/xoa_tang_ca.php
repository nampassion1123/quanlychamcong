<?php
$id=$_GET['x'];
global conn;
$sql="delete from tang_ca where id='$id'";
$ketqua=mysqli_query($conn, $sql) or die("Câu truy vấn sai!");
if($ketqua==true)
{
     header("Location:ql_tang_ca.php");
}
?>