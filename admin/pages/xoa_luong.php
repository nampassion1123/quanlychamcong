<?php
$id=$_GET['x'];
$cn=mysqli_connect('db-mysql-nyc3-95634-do-user-18598910-0.i.db.ondigitalocean.com', 'doadmin', "AVNS_ng7n4COe0AhJXEnSBsS", 'quanlychamcong')or die("Kết nối database không thành công");
$sql="delete from luong where He_so_luong='$id'";
$ketqua=mysqli_query($cn, $sql) or die("Câu truy vấn sai!");
if($ketqua==true)
{
     header("Location:ql_luong.php");
}
?>