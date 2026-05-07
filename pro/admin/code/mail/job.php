
<?php
require 'vendor/autoload.php';
use PHPMailer\PHPMailer\PHPMailer;
use PHPMailer\PHPMailer\Exception;
function send_mail($FullName,$Email,$Phone,$JobPosition,$YearsofExperience,$Whydoyouwanttojoinus) {
    $mail = new PHPMailer(true);

    try {
        $mail->isSMTP();
        $mail->Host       = 'smtp.gmail.com';
        $mail->SMTPAuth   = true;
        
        $mail->Username   = 'funwithus145@gmail.com';
        $mail->Password   = 'sdpu tmxj xqkn epsw';
        $mail->SMTPSecure = 'tls';
        $mail->Port       = 587;

        $mail->setFrom('myexport1205@gmail.com', 'Game Zone');
        $mail->addAddress("funwithus145@gmail.com");
        $mail->isHTML(true);
      $mail->Subject = 'New Job Application!';
        $mail->Body    = '


<!DOCTYPE html>
<html>
<head>
    <title>Job Application</title>
</head>
<body style="background-color: #f4f4f4; padding: 20px; font-family: Arial, sans-serif;">
    <table width="100%" cellspacing="0" cellpadding="0">
        <tr>
            <td align="center">
                <table width="600px" cellspacing="0" cellpadding="0" style="background-color: #ffffff; border-radius: 10px; box-shadow: 0px 4px 10px rgba(0, 0, 0, 0.1); padding: 20px;">
                    <!-- Header -->
                    <tr>
                        <td align="center" style="padding-bottom: 20px;">
                            <h2 style="color: #333; margin: 0;">New Job Application</h2>
                        </td>
                    </tr>

                    <!-- Full Name -->
                    <tr>
                        <td style="padding: 10px 0;">
                            <strong>Full Name:</strong> '.$FullName.'
                        </td>
                    </tr>

                    <!-- Email -->
                    <tr>
                        <td style="padding: 10px 0;">
                            <strong>Email:</strong> '.$Email.'
                        </td>
                    </tr>

                    <!-- Phone -->
                    <tr>
                        <td style="padding: 10px 0;">
                            <strong>Phone:</strong> '.$Phone.'
                        </td>
                    </tr>

                    <!-- Job Position -->
                    <tr>
                        <td style="padding: 10px 0;">
                            <strong>Job Position:</strong> '.$JobPosition.'
                        </td>
                    </tr>

                    <!-- Years of Experience -->
                    <tr>
                        <td style="padding: 10px 0;">
                            <strong>Years of Experience:</strong> '.$YearsofExperience.'
                        </td>
                    </tr>

                    <!-- Why do you want to join us? -->
                    <tr>
                        <td style="padding: 10px 0;">
                            <strong>Why do you want to join us?</strong>
                            <p style="margin: 5px 0; color: #555;">
                               '.$Whydoyouwanttojoinus.'
                            </p>
                        </td>
                    </tr>

                    <!-- Footer -->
                    <tr>
                        <td align="center" style="padding-top: 20px;">
                            <p style="color: #777; font-size: 12px;">This is an automated email. Please do not reply.</p>
                        </td>
                    </tr>
                </table>
            </td>
        </tr>
    </table>
</body>
</html>

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
