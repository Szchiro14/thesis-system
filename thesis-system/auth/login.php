<?php
session_start();
include "../includes/db.php";

$username = $_POST['username'];
$password = $_POST['password'];

$sql = "SELECT * FROM user WHERE username = ?";
$stmt = $conn->prepare($sql);
$stmt->bind_param("s", $username);
$stmt->execute();
$result = $stmt->get_result();

if ($result->num_rows === 1) {
    $row = $result->fetch_assoc();

    // Verify hashed password
    if (password_verify($password, $row['password'])) {
        $_SESSION['username'] = $row['username'];
        header("Location: ../admin/dashboard.php");
        exit();
    } else {
        echo "<script>alert('Incorrect password'); window.history.back();</script>";
    }
} else {
    echo "<script>alert('Username not found'); window.history.back();</script>";
}
?>