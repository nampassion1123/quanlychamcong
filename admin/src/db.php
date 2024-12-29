<?php
$servername = "quanly-do-user-18598910-0.l.db.ondigitalocean.com:25060"; //Khai báo server
$username = "doadmin";// Khai báo username
$password = "AVNS_hFDFAqaIQtJ4Is0hsLT";// Khai báo password
$dbname = "admin"; // Khai báo database
//Kết nối cơ sở dữ liệu 
$conn = mysqli_connect($servername, $username, $password, $dbname); 
//Nếu kết nối bị lỗi thì xuất báo lỗi và thoát.
if (!$conn) {
    die("Không kết nối :" . mysqli_connect_error());
    exit();
}
