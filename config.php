<?php
require_once "vendor/autoload.php";
 
use Omnipay\Omnipay;
 
define('CLIENT_ID', 'Ad-BZdkRrtBLAvzPIXNdN3YVPVJDMjHh3u5vFwrO8KwKzm5TovhRZFoeX7OBCvA3Med4Qg30TA-hMWmf');
define('CLIENT_SECRET', 'EDdL5yEiRPjb-5m3mFOeYM8GeG23A_8QmhBbdnp3zDIt-USQSo6aPl5xSpwjF-i7STlUuwsqq9xGSd75');
 
define('PAYPAL_RETURN_URL', 'http://localhost/bps/success.php');
define('PAYPAL_CANCEL_URL', 'http://localhost/bps/cancel.php');
define('PAYPAL_CURRENCY', 'USD'); // set your currency here
 
// Connect with the database
// $db = new mysqli('localhost', 'root', '', 'testing'); 
 
// if ($db->connect_errno) {
//     die("Connect failed: ". $db->connect_error);
// }
 
$gateway = Omnipay::create('PayPal_Rest');
$gateway->setClientId(CLIENT_ID);
$gateway->setSecret(CLIENT_SECRET);
$gateway->setTestMode(true); //set it to 'false' when go live   