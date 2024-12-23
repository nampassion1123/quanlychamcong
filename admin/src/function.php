<?php require_once 'db.php';

function bophan()
{
  global $conn;
  $result = $conn->query("SELECT * FROM bo_phan");
  return $result->fetch_all(MYSQLI_ASSOC);
}
function calamviec()
{
  global $conn;
  $result = $conn->query("SELECT * FROM ca_lam_viec");
  return $result->fetch_all(MYSQLI_ASSOC);
}
function nhanvien()
{
  global $conn;
  $result = $conn->query("SELECT * FROM nhan_vien");
  return $result->fetch_all(MYSQLI_ASSOC);
  $nv = mysqli_num_rows($result);
}
function luong()
{
  global $conn;
  $result = $conn->query("SELECT * FROM luong");
  return $result->fetch_all(MYSQLI_ASSOC);
}
function nghiviec()
{
  global $conn;
  $result = $conn->query("SELECT * FROM nghi_viec");
  return $result->fetch_all(MYSQLI_ASSOC);
}
function search()
{
  $servername = "db-mysql-nyc3-95634-do-user-18598910-0.i.db.ondigitalocean.com"; //Khai báo server
$username = "doadmin";// Khai báo username
$password = "AVNS_ng7n4COe0AhJXEnSBsS";// Khai báo password
$dbname = "quanlychamcong"; // Khai báo database
//Kết nối cơ sở dữ liệu 
  $conn = mysqli_connect($servername, $username, $password, $dbname);
  //Truy vấn dữ liệu
  if (isset($_GET['search']) && !empty($_GET['search'])) {
    $key = $_GET['search'];
    $sql = "SELECT * FROM nhan_vien WHERE Ma_nv LIKE '%key%' OR Hoten  LIKE '%key%' OR Gioitinh  LIKE '%key%' OR Quequan  LIKE '%key%' OR ID_bophan  LIKE '%key%' OR ID_ca_lam  LIKE '%key%' OR He_so_luong  LIKE '%key%'";
  } else { {
      $sql = "SELECT * FROM nhan_vien";
    }
    $result = mysqli_query($conn, $sql);
  }
}
