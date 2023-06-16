<?php
if ($_SERVER["REQUEST_METHOD"] == "POST") {
  $name = $_POST["name"];
  $email = $_POST["email"];
  $message = $_POST["message"];

  // Email address to send the feedback
  $to = "sants@tlu.ee";

  // Subject of the email
  $subject = "Feedback from Website";

  // Email body
  $body = "Name: " . $name . "\n";
  $body .= "Email: " . $email . "\n";
  $body .= "Message: " . $message;

  // Additional headers
  $headers = "From: " . $email;

  // Send the email
  $success = mail($to, $subject, $body, $headers);

  if ($success) {
    echo "Thank you for your feedback!";
  } else {
    echo "Sorry, there was a problem sending your feedback.";
  }
}
?>
