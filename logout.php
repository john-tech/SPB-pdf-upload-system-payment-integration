<?php

// session_start();
// if (!session_destroy()) {
//     echo "Failed to log out";
// } else {
//     header('Location: index.php');

//     echo "Logged out successfully";
// }
?>
<?php   
session_start(); //to ensure you are using same session
session_destroy(); //destroy the session
header("location:index.php"); //to redirect back to "index.php" after logging out
exit();
?>