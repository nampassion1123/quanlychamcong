<?php
$servername = "db-mysql-nyc3-95634-do-user-18598910-0.i.db.ondigitalocean.com"; //Khai báo server
$username = "doadmin";// Khai báo username
$password = "AVNS_ng7n4COe0AhJXEnSBsS";// Khai báo password
$dbname = "quanlychamcong"; // Khai báo database
//Kết nối cơ sở dữ liệu 
$conn = mysqli_connect($servername, $username, $password, $dbname); 
//Nếu kết nối bị lỗi thì xuất báo lỗi và thoát.
if (!$conn) {
    die("Không kết nối :" . mysqli_connect_error());
    exit();
}
