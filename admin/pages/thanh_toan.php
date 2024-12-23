<?php
$id = $_GET['x'];
$conn = mysqli_connect('db-mysql-nyc3-95634-do-user-18598910-0.i.db.ondigitalocean.com', 'doadmin', "AVNS_ng7n4COe0AhJXEnSBsS", 'quanlychamcong');
$sql = " UPDATE nhan_luong SET Tinh_trang ='Đã thanh toán' where ID = '$id'";
$result = mysqli_query($conn, $sql);
if ($result == true) {
    header("Location:ql_bang_luong.php");
}
