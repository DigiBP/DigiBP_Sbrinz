<?php
header('Content-Type: application/json');

$entityBody = file_get_contents('php://input');
$json = json_decode($entityBody, true);

$text = $json["text"];


$host = 'https://plagiarismsearch.com/api/v3/reports/create';
$username = 'USERNAME';
$password = 'KEY';



$ch = curl_init();

curl_setopt($ch, CURLOPT_URL, $host);
curl_setopt($ch, CURLOPT_POST, 1);
curl_setopt($ch, CURLOPT_USERPWD, $username . ":" . $password);
curl_setopt($ch, CURLOPT_POSTFIELDS, http_build_query(array('text' => $text)));


curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);

$server_output = curl_exec($ch);

curl_close ($ch);

echo $server_output;


?>