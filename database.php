<?php
define("HOSTNAME","localhost");
define("USERNAME","root");
define("PASSWORD","");
define("DATABASENAME","chatbot");

$conn = mysqli_connect(HOSTNAME,USERNAME,PASSWORD,DATABASENAME);
if(!$conn){
    die(mysqli_connect_error());
}