<?php
$id = $_GET['ID'];
require_once "./admin/src/db.php";

$sql = " UPDATE bo_phan SET Ten ='Nghỉ việc' where ID_cham_cong = '$id'";
$result = mysqli_query($conn, $sql);
    if ($result == true) {
        header("Location:ql_cham_cong.php");
    }

