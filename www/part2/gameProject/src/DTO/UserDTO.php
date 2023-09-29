<?php

namespace Aurelbou\GameProject\DTO;

use DateTime;

class UserDTO
{
    public function __construct($user)
    {
        $fake_bd = new DateTime();

        $this->setLogin($user['login']);
        $this->setPassword($user['password']);
        $this->setBirthDate($fake_bd);
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

    public function setLogin(string $login):void {
        $this->login = $login;
    }
    public function getLogin(): string {
        return $this->login;
    }

    public function setPassword(string $hash):void {
        $this->password = $hash;
    }

    public function getPassword(): string {
        return $this->password;
    }

    public function setBirthDate($bd): void {

        $this->birth_date = strtotime($bd);
    }
    public function getBirthDate(): DateTime {
        return $this->birth_date;
    }

    public function getEmail(): string {
        return $this->email;
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