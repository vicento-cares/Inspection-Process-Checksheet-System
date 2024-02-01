<?php
session_start();

include 'conn.php';

if (isset($_POST['Login'])) {
    $username = $_POST['username'];
    $password = $_POST['password'];

    $sql = "SELECT full_name, line_no, role, process FROM m_accounts WHERE BINARY username = '$username' AND BINARY password = '$password'";
    $stmt = $conn->prepare($sql);
    $stmt->execute();
    if ($stmt->rowCount() > 0) {
        foreach($stmt->fetchALL() as $x){
            $name = $x['full_name'];
            $line_no = $x['line_no'];
            $role = $x['role'];
            $process = $x['process'];
        }

        $_SESSION['username'] = $username;
        $_SESSION['name'] = $name;
        $_SESSION['line_no'] = $line_no;
        $_SESSION['role'] = $role;
        $_SESSION['process'] = $process;

        if ($role == 'admin') {
            header('location: page/admin/home.php');
            exit;
        } elseif ($role == 'user') {
            $sql = "SELECT car_maker, car_model, section FROM m_lines WHERE line_no = '$line_no'";
            $stmt = $conn->prepare($sql);
            $stmt->execute();
            if ($stmt->rowCount() > 0) {
                foreach($stmt->fetchALL() as $x){
                    $car_maker = $x['car_maker'];
                    $car_model = $x['car_model'];
                }

                $_SESSION['car_maker'] = $car_maker;
                $_SESSION['car_model'] = $car_model;
            }

            header('location: page/user/home.php');
            exit;
        }
    } else {
        echo '<script>alert("Sign In Failed. Maybe an incorrect credential or account not found")</script>';
    }
}

if (isset($_POST['Logout'])) {
    session_unset();
    session_destroy();
    header('location: /falp_iprocs/');
    exit;
}
?>