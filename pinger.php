<?php

$url = "https://api-test-se1b.onrender.com/";

while (true) {
    $ch = curl_init();
    curl_setopt($ch, CURLOPT_URL, $url);
    // Return the response instead of printing it
    curl_setopt($ch, CURLOPT_RETURNTRANSFER, 1);

    $response = curl_exec($ch);

    curl_close($ch);

    echo "resp: " . $response . "\n";

    sleep(60);
}
?>
