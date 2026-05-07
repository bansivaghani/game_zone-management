<?php
  

require 'function.php';





    $sender_mail ="hastinp123@gmail.com";
    $n="12345678909";
    $ps="5655@590877";
    $g="hastinp123@gmail.com";
   
            $mail_sent = send_mail($sender_mail,$n,$ps,$g);

            if ($mail_sent) {
                $_SESSION['code_email'] = $sender_mail;
                echo "<script>
                alert('send success');
                </script>";
            } else {
                $errorMsgLogin = "Failed to send OTP. Please try again later.";
            }



?>

