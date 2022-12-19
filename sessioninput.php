<?php 
   session_start();
   if(isset($_SESSION['userid']))
   {
    
   }
   else
   {
    header('Location: index.php');
   }
?>