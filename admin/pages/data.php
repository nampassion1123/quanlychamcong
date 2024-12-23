<?php
  $servername = "db-mysql-nyc3-95634-do-user-18598910-0.i.db.ondigitalocean.com"; //Khai báo server
  $username = "doadmin";// Khai báo username
  $password = "AVNS_ng7n4COe0AhJXEnSBsS";// Khai báo password
  $dbname = "quanlychamcong"; // K
 $conn = new PDO("mysql:host=$servername;dbname=$dbname;", $username, $password);

    header('Content-Type: application/json');
    $data = array();
    // $query = "SELECT Tinh_trang, COUNT(Tinh_trang) AS Tinhtrang FROM nhan_luong GROUP BY Tinh_trang";
    $query = "SELECT Tong, SUM(Tong) AS Tong FROM nhan_luong GROUP BY Tong";
    $stmt = $conn->prepare($query);
    if($stmt->execute()){
        if($stmt->rowCount()>0){
            $result = $stmt->fetchAll(PDO::FETCH_ASSOC);
        }
    }
    foreach($result as $row){
        $data[] = $row;
    }
    echo json_encode($data);
?>