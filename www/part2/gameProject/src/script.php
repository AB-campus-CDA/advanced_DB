<?php

require '../vendor/autoload.php';

use Aurelbou\GameProject\Connection;



$connection = Connection::getConnection();


$users = $connection->query("Select * from users")->fetchAll();

print_r($users);