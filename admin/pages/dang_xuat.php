<?php 
	session_start();
	unset($_SESSION['username']);
	if(isset($_SESSION['Ma_nv'])){
		$user = $_SESSION['Ma_nv'];
		$conn = mysqli_connect('db-mysql-nyc3-95634-do-user-18598910-0.i.db.ondigitalocean.com', 'doadmin ', "AVNS_ng7n4COe0AhJXEnSBsS", 'quanlychamcong');
		$sql = " UPDATE nhan_vien SET login = 0 WHERE Ma_nv='$user'";
		$result = mysqli_query($conn, $sql);
	}
	echo "<script> alert('Bạn đã đăng xuất khỏi hệ thống');</script>";
	echo "<script> window.location = 'index.php';</script>";
 ?>