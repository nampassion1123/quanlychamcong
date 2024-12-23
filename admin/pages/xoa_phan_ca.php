<?php
if($_GET['x']){
     $id=$_GET['x'];
}else{
     $id=$_GET['xnv'];
}

$cn=mysqli_connect('db-mysql-nyc3-95634-do-user-18598910-0.i.db.ondigitalocean.com', 'doadmin ', "AVNS_ng7n4COe0AhJXEnSBsS", 'quanlychamcong')or die("Kết nối database không thành công");
$sql="delete from phan_ca_lam where id='$id'";
$ketqua=mysqli_query($cn, $sql) or die("Câu truy vấn sai!");
if($ketqua==true && $id=$_GET['x'])
{
     header("Location:ql_ca_lam.php");
}else{
     header("Location:sua_lich_lam.php");

}
?>