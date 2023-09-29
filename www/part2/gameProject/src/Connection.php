<?php

namespace Aurelbou\GameProject;

use PDO;

class Connection extends PDO
{

    private static $connectInstance = null;

    public function __construct()
    {
        self::$connectInstance =
            parent::__construct(
                "mysql:host=docker.internal.host;port=6603;dbname=square_game",
                'root',
                'helloworld');
    }

    public static function getConnection() {

        if(is_null(self::$connectInstance)) {
            self::$connectInstance = new Connection();
        }

        return self::$connectInstance;
    }

}