# DIAGRAMME DE CLASSES

```mermaid
classDiagram

classDiagram

class Player{
    -String login
    -String password
    -Date birth_date
    -purchaseToken()
    -customizeBoard()
    -customizePawnsSet()
    -getGameHisto()
    -getPurchaseHisto()
    -getTokenUsage()
    -getTokenQuantity()
    -getStat()
}

class Game{
    -String name
    -int size
    -int minAge
    -Json difficulty
    +getName()
    -setName()
    +getSize()
    -setSize()
    +getMinAge()
    -setMinAge()
    +getDifficulty()
    -setDifficulty()
    -usePawns()
}

class Match{
    +String game
    +addPlayer()
    +addAI()
}

class Customizable{
    -String name
    -String color
    +getName()
    -setName()
    +getColor()
    -setColor()
}

class Pawn{
-String pattern
+getPattern()
-setPattern()
}
class Board{
-int size
+getSize()
-setSize()
}

Customizable <|-- Pawn
Customizable <|-- Board


```