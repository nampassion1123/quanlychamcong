<?php
session_start();
global conn; // Kết nối với cơ sở dữ liệu


// Nhận dữ liệu từ yêu cầu POST
$user_id = $_POST['user_id'];
$assigned_to = $_POST['assigned_to'];
// Cập nhật trường assigned_to trong bảng chat
$stmt = $conn->prepare("INSERT INTO `messages` ( `user_id`, `assigned_to`,`status`,`active`) VALUES ('$user_id','$assigned_to','1','1')");

// Thực hiện câu lệnh
if ($stmt->execute()) {
    echo json_encode(['success' => true]);
} else {
    echo json_encode(['success' => false, 'error' => $stmt->error]);
}

// Đóng kết nối
$stmt->close();
$conn->close();
?>