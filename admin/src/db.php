<?php
$servername = "mongodb+srv://quanlychamcong-a9d08393.mongo.ondigitalocean.com:25060"; //Khai báo server
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
