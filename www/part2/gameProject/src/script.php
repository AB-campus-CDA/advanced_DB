<?php

require '../vendor/autoload.php';

use Aurelbou\GameProject\DAO\UserDAO;
use Aurelbou\GameProject\DTO\UserDTO;


$userDAO = new UserDAO;

/*
$user = $userDAO->getUserById(1);
print_r($user);
*/


// create new user
$user = new UserDTO([
    'login' => 'bidul',
    'password' => 'hashedPassword',
    'email' => 'MonEmail@teSt.coM'
]);

$userDAO->createUser($user);

