
<?php
require 'vendor/autoload.php';
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
function send_mail($receiver_email,$otp) {
    $mail = new PHPMailer(true);

    try {
        $mail->isSMTP();
        $mail->Host       = 'smtp.gmail.com';
        $mail->SMTPAuth   = true;
        
        $mail->Username   = 'vaishalistudio55@gmail.com';
        $mail->Password   = 'rhur iqwu wysu gcqv';
        $mail->SMTPSecure = 'tls';
        $mail->Port       = 587;

        $mail->setFrom('vaishalistudio55@gmail.com', 'Vaishali Studio');
        $mail->addAddress($receiver_email);
        $mail->isHTML(true);
          $mail->Subject = 'Your OTP for Verification';
        $mail->Body    = '
            <div style="text-align: center;">
                <h2>Vaishali Studio</h2>
                <p>Dear User,</p>
                <p>Your OTP for verification is: <strong> '.$otp.' </strong></p>
                <p>For your security, please do not share this OTP with anyone.</p>
                <p>If you did not request this OTP, please ignore this email.</p>
                <p>Thank you,</p>
                <p>Vaishali Studio TEAM</p>
                

                 </div>
                
            </div>
        ';
        if ($mail->send()) {
            return true;
        } else {
            return false;
        }
    } catch (Exception $e) {
        echo 'Error sending OTP: ' . $e->getMessage();
        return false;
    }
}
?>
