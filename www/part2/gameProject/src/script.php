<?php

require '../vendor/autoload.php';

use Aurelbou\GameProject\Connection;
use Aurelbou\GameProject\DAO\UserDAO;
use Aurelbou\GameProject\DTO\UserDTO;


$userDAO = new UserDAO;
$user = $userDAO->getUserById(1);
echo $user->getAge();



/*
$user = new \Aurelbou\GameProject\DAO\UserDTO([
    'email' => 'MonEmail@teSt.coM'
]);
$userDAO->createUser($user);
*/
