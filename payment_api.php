<?php

define('DB_SERVER', 'localhost');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_DATABASE', 'testing');
$db = mysqli_connect(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_DATABASE);
require('config.php');
require_once 'config3.php';
$result2 = mysqli_query($db, "SELECT * FROM `upload_pdf`");

$newsCount = mysqli_num_rows($result2); // Count the output amount

if ($newsCount == 0) {

    $file = rand(1000, 100000) . "-" . $_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
    $folder = "upload_files/";
    move_uploaded_file($file_loc, $folder . $file);
    $sql = "INSERT INTO upload_pdf (pdfs) VALUES ('$file')";
    $iquery = mysqli_query($db, $sql);

} else if (isset($_POST['stripeToken'])) { 
        \Stripe\Stripe::setVerifySslCerts(false);
        $token = $_POST['stripeToken'];
        $amount = $_POST["amount"];
        $file = rand(1000, 100000) . "-" . $_FILES['file']['name'];
        $file_loc = $_FILES['file']['tmp_name'];
        $folder = "upload_files/";
        move_uploaded_file($file_loc, $folder . $file);
        $data = \Stripe\Charge::create(
            array(
                "amount" => $amount,
                "currency" => "usd",
                "description" => 'xyz',
                "source" => $token,
            )
        );
        $sql = "INSERT INTO upload_pdf (pdfs,book_price) VALUES ('$file','$amount')";
        $iquery = mysqli_query($db, $sql);
    
}else if (isset($_POST['submit2'])) {
    $amount = $_POST["amount2"];
    $file = rand(1000, 100000) . "-" . $_FILES['file']['name'];
    $file_loc = $_FILES['file']['tmp_name'];
    $folder = "upload_files/";
    try {
        $response = $gateway->purchase(array(
            'amount' => $_POST['amount2'],
            'currency' => PAYPAL_CURRENCY,
            'returnUrl' => PAYPAL_RETURN_URL,
            'cancelUrl' => PAYPAL_CANCEL_URL,
        ))->send();
        $sql = "INSERT INTO upload_pdf (pdfs,book_price) VALUES ('$file','$amount')";
        $iquery = mysqli_query($db, $sql);
        if ($response->isRedirect()) {
            $response->redirect(); // this will automatically forward the customer
        } else {
            // not successful
            echo $response->getMessage();
        }
    } catch(Exception $e) {
        echo $e->getMessage();
    }
}
mysqli_close($db);

