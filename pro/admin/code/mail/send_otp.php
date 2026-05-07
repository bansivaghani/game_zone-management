<?php
  
include("../../admin/code/connection.php");

session_start();
require 'f.php';




if (isset($_POST['login'])) {


  # code...
extract($_POST);

  $sql="SELECT * FROM `login` WHERE gmail='$g'";
  $run=mysqli_query($con,$sql);
$row=mysqli_fetch_assoc($run);
$_SESSION['id']=$row['id'];
$total=mysqli_num_rows($run);


if ($total<=0) {
  # code...
        echo "<script>alert('Invelid Gmail...');

 window.location.href='../forgot.php';
        </script>";

}else{

 $sender_mail =$g;

  $otp= random_int(100000, 999999);

      $_SESSION['otp']=$otp;

            $mail_sent = send_mail($sender_mail,$otp);

            if ($mail_sent) {
                $_SESSION['code_email'] = $sender_mail;
                echo "<script>
               // alert('send success');
                </script>";
            } else {
                $errorMsgLogin = "Failed to send OTP. Please try again later.";
            }

           echo "<script>
         
 window.location.href='../otp.php';
 </script>
 ";  


}

}

/*
   

            */



//            echo "<script>
//            alert('User Successefuly Register..');
// window.location.href='../index.php';
// </script>
// ";





     

?>

