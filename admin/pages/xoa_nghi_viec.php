<?php
$id=$_GET['x'];
$conn=mysqli_connect('db-mysql-nyc3-95634-do-user-18598910-0.i.db.ondigitalocean.com', 'doadmin', "AVNS_ng7n4COe0AhJXEnSBsS", 'quanlychamcong')or die("Kết nối database không thành công");
$sql="delete from nghi_viec where ID='$id'";
$results=mysqli_query($conn, $sql) or die("Câu truy vấn sai!");
if($results==true)
{
     header("Location:ql_nghi_viec.php");
}
?>