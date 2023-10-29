<?php
require 'database.php';

if (isset($_POST['message'])) {
    $message = $_POST['message'];

    // Escape the user input to prevent SQL injection
    $message = $conn->real_escape_string($message);

    // Perform a partial match using LIKE
    $sql = "SELECT answer FROM chat_data WHERE question LIKE '%" . $message . "%' LIMIT 1";

    $result = $conn->query($sql);

    if ($result->num_rows > 0) {
        $row = $result->fetch_assoc();
        echo $row['answer'];
    } else {
        echo "Sorry, I am not able to understand you.";
    }

    $conn->close();
}
?>
