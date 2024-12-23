<?php
header('Content-Type: application/json');
date_default_timezone_set('Asia/Ho_Chi_Minh');
ini_set('display_errors', 1);
ini_set('display_startup_errors', 1);
error_reporting(E_ALL);

// Kết nối đến cơ sở dữ liệu
$servername = "db-mysql-nyc3-95634-do-user-18598910-0.i.db.ondigitalocean.com"; //Khai báo server
  $username = "doadmin";// Khai báo username
  $password = "AVNS_ng7n4COe0AhJXEnSBsS";// Khai báo password
  $dbname = "quanlychamcong"; /// Thay bằng tên cơ sở dữ liệu của bạn

// Tạo kết nối
$conn = mysqli_connect($servername, $username, $password, $dbname);

// Kiểm tra kết nối
if (!$conn) {
    die(json_encode(['success' => false, 'error' => 'Kết nối thất bại: ' . mysqli_connect_error()]));
}

// Nhận dữ liệu JSON từ yêu cầu
$data = json_decode(file_get_contents('php://input'), true);
$messages = $data['messages']; // Mảng các tin nhắn
$userId = $data['userId'];
$curtime = date('Y-m-d H:i:s');

// Kiểm tra nếu mảng tin nhắn có dữ liệu
if (empty($messages)) {
    echo json_encode(['success' => false, 'error' => 'Không có tin nhắn nào được chọn.']);
    exit;
}

// Chuẩn bị câu truy vấn
$sql = "INSERT INTO messages (user_id, message, created_at) VALUES (?, ?, ?)";
$stmt = mysqli_prepare($conn, $sql);

if (!$stmt) {
    echo json_encode(['success' => false, 'error' => 'Chuẩn bị truy vấn thất bại: ' . mysqli_error($conn)]);
    exit;
}

// Gắn tham số cho truy vấn
mysqli_stmt_bind_param($stmt, "iss", $userId, $message, $curtime);

// Lặp qua từng tin nhắn và thực thi câu lệnh
foreach ($messages as $message) {
    if (!mysqli_stmt_execute($stmt)) {
        echo json_encode(['success' => false, 'error' => 'Lỗi khi chèn tin nhắn: ' . mysqli_stmt_error($stmt)]);
        exit;
    }
}

// Nếu tất cả các tin nhắn được chèn thành công
echo json_encode(['success' => true]);

// Đóng câu lệnh và kết nối
mysqli_stmt_close($stmt);
mysqli_close($conn);
?>
