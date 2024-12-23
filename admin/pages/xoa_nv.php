<?php
$manv=$_GET['x'];
$con=mysqli_connect('db-mysql-nyc3-95634-do-user-18598910-0.i.db.ondigitalocean.com', 'doadmin', "AVNS_ng7n4COe0AhJXEnSBsS", 'quanlychamcong')or die("Kết nối database không thành công");
$sql1="DELETE from phan_ca_lam where Ma_nv='$manv'";
mysqli_query($con, $sql1) or die("Đã xảy ra lỗi!");

$sql2="DELETE from cham_cong where Ma_nv='$manv'";
mysqli_query($con, $sql2) or die("Đã xảy ra lỗi!");

$sql3="DELETE from  nhan_luong where Ma_nv='$manv'";
mysqli_query($con, $sql3) or die("Đã xảy ra lỗi!");

$sql4="DELETE from  thuong_phat where Ma_nv='$manv'";
mysqli_query($con, $sql4) or die("Đã xảy ra lỗi!");

$sql5="DELETE from  ung_luong where Ma_nv='$manv'";
mysqli_query($con, $sql5) or die("Đã xảy ra lỗi!");

$sql="DELETE from nhan_vien where Ma_nv='$manv'";
$result=mysqli_query($con, $sql) or die("Đã xảy ra lỗi!");
if($result==true)
{
     header("Location:ql_nhan_vien.php");
}
?>