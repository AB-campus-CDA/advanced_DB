<?php

namespace Aurelbou\GameProject\DAO;

use DateTime;

class UserDTO
{
    public function __construct($user)
    {
        $this->setEmail($user['email']);
    }
    private $email;
    private string $login ;

    private string $password;

    private DateTime $birth_date;

    private int $tokens;

    public function getTokenQuantity(): int
    {
        return $this->tokens;
    }

    public function setEmail($email): void{
        $this->email = strtolower($email) ;
    }

    private function customizeBoard(): void
    {

    }

    private function customizePawnsSet(): void
    {

    }

    private function getGameHisto(): array
    {
        // show games by dates
        $games = [];
        return $games;
    }

    private function getStat(): array
    {
        // show won / loosed games
        $stats = [];
        return $stats;
    }

    public function getAge(): int {
        $now = new DateTime();
        return $now->diff($this->birth_date);
    }
}