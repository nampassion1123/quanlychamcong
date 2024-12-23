<?php
$conn = mysqli_connect('db-mysql-nyc3-95634-do-user-18598910-0.i.db.ondigitalocean.com', 'doadmin ', "AVNS_ng7n4COe0AhJXEnSBsS", 'quanlychamcong');
if ($_SERVER['REQUEST_METHOD'] === 'POST') {
    $id = $_POST['id'];
    $status = $_POST['status'];

    $sql = "UPDATE cham_bu SET status = ? WHERE id = ?";
    $stmt = $conn->prepare($sql);
    $stmt->bind_param("is", $status, $id);
    $stmt->execute();
    $stmt->close();
}
?>