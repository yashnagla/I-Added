<?php
$Full_Name = $_POST['Full_Name'];
$EMail_ID = $_POST['EMail_ID'];
$Phone_Number = $_POST['Phone_Number'];
$Paasword1 = $_POST['Paasword1'];
$PaaswordC = $_POST['PaaswordC'];
// DataBase Connection
$conn = new mysqli('localhost','root','','IADDED');
if ($conn->connect_error) {
    die('Connection Failed : '.$conn->connect_error);
}

?>else{
    $stmt = $com->prepare("insert into Register(Full_Name, EMail_ID, Phone_Number, Password1, PasswordC) values(?,?,?,?,?)");
    $stmt -> bind_param("vvivv",$Full_Name, $EMail_ID, $Phone_Number, $Password1, $PasswordC);
    $stmt -> execute();
    echo "Registration Successfully...";
    $stmt -> close();
    $conn -> close();}