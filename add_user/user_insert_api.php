<?php
require_once('../vendor/autoload.php');
$servername='localhost';
$username='root';
$password='';
$dbname = "testing";
$conn=mysqli_connect($servername,$username,$password,"$dbname");
if(!$conn){
   die('Could not Connect My Sql');
} 


$name = $_POST["name"];
$email = $_POST["email"];
$password = $_POST["password"];
// $encriped=  md5($password_enc);
$passwordmd5 = md5($password);
$token = $_POST["stripeToken"];

$prefix = "a";
$stripe = new \Stripe\StripeClient('sk_test_51M35IfLsuGyV4cRXK0KqilRKIZ1bvz1oo9wvilJrrMSTOtJiZgjuG6Sfhg9FL1wPcDtTCqFMJyJg2gV6RqUbpvUj00HlBgD4El');
$customer= $stripe->customers->create([
    'name'=>$name,
    'email'=>$email,
    'source'=>$token,
]);
$customerid = $customer->id;
$customeramount = $customer->amount;
$subscription =$stripe->subscriptions->create([
    'customer'=>$customerid, 
   'items'=>[['price'=>'price_1M4snHLsuGyV4cRXZLGfnapw']
   ] 
]);
echo '<pre>';
print_r($subscription);
echo '</pre>';
$to_amount = $subscription->items->data['0']->plan['amount'];
// echo '<script> alert("'.$subscription->items->data['0']->plan['amount'].'")</script>';
$sql = "INSERT INTO users(username,email,password,amount) VALUES ('$name','$email','$passwordmd5','$to_amount')";
if (mysqli_query($conn, $sql)) {
   echo "New record created successfully !";
   echo "<script>
   alert('Record Update successfully');
   window.location.href='http://localhost/bps/users.php';
   </script>";
 header("Location:http://localhost/bps/users.php");
   // echo '<script>alert("Welcome to Geeks for Geeks")</script>';
} else {
   echo "Error: " . $sql . "
" . mysqli_error($conn);
}
mysqli_close($conn);


if($subscription->status=='active'){
    echo 'You have succefully subscribed';
    }else{
    echo 'Problem while subscribing';
    }






?>