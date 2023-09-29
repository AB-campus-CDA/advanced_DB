<?php

namespace Aurelbou\GameProject\DAO;

use Aurelbou\GameProject\Connection;
use Aurelbou\GameProject\DTO\UserDTO;

class UserDAO
{
    private Connection $db;

    public function __construct() {
        $this->db = Connection::getConnection();
    }


    public function getUserById(int $id) {
        $query = "SELECT * FROM users WHERE id = '" . $id . "'";
        $result = $this->db->query($query)->fetch();
        return new UserDTO($result);
    }
    public function getUserByLogin(string $login) {
        $query = "SELECT * FROM users WHERE login = '" . $login . "'";
        $result = $this->db->query($query)->fetch();
        return new UserDTO($result);
    }

    public function createUser(UserDTO $user){
        $login = $user['login'];
        $password = $user['password'];
        //$avatar = $user['avatar'];
        $avatar = null;
        //$pseudo = $user['pseudo'];
        $pseudo = null;
        $email = $user['email'];
        $tokens = 0;
        $birth_date = $user['birth_date'];


        $query = "INSERT INTO users (login, password, avatar, pseudo, email, birth_date, tokens) VALUES ($login, $password, $avatar, $pseudo, $email, $tokens, $birth_date)";

        $this->db->query($query)->fetch();
    }


    public function getTokenUsage(): array
    {
        $tokenUsage = [];
        return $tokenUsage;
    }

}