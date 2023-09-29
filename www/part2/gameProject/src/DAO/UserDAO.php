<?php

namespace Aurelbou\GameProject\DAO;

use Aurelbou\GameProject\Connection;

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

    }


    public function getTokenUsage(): array
    {
        $tokenUsage = [];
        return $tokenUsage;
    }

}