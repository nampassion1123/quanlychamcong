<?php
require_once "../src/db.php";

$id = $_GET['ID'];
$sql = " UPDATE bo_phan SET Ten ='Nghỉ việc' where ID_cham_cong = '$id'";
$result = mysqli_query($conn, $sql);
    if ($result == true) {
        header("Location:ql_cham_cong.php");
    }

