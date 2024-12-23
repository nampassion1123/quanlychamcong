<?php
$id=$_GET['x'];
$cn=mysqli_connect('db-mysql-nyc3-95634-do-user-18598910-0.i.db.ondigitalocean.com', 'doadmin ', "AVNS_ng7n4COe0AhJXEnSBsS", 'quanlychamcong') or die("Kết nối database không thành công");
$sql="DELETE from bo_phan where ID ='$id'";
$ketqua=mysqli_query($cn, $sql) or die("Chuyển các nhân viên của bộ phận này sang phòng ban khác trước khi xóa!");
if($ketqua==true)
{
     header("Location:ql_bo_phan.php");
}
?>