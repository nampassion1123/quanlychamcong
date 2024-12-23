<?php
$conn = mysqli_connect('db-mysql-nyc3-95634-do-user-18598910-0.i.db.ondigitalocean.com', 'doadmin ', "AVNS_ng7n4COe0AhJXEnSBsS", 'quanlychamcong');
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $ma_nv = $_POST['Ma_nv'];
    $status = $_POST['status'];

    $sql = "UPDATE nhan_vien SET status = ? WHERE Ma_nv = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("is", $status, $ma_nv);
    $stmt->execute();
    $stmt->close();
}
?>