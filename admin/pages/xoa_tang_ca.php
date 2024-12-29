<?php
$id=$_GET['x'];
$cn=mysqli_connect('localhost','root',"",'quanlychamcong')or die("Kết nối database không thành công");
$sql="delete from tang_ca where id='$id'";
$ketqua=mysqli_query($cn, $sql) or die("Câu truy vấn sai!");
if($ketqua==true)
{
     header("Location:ql_tang_ca.php");
}
?>