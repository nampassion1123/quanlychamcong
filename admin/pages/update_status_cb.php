<?php
require_once "./admin/src/db.php";

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