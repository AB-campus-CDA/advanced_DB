/*
    CREATE APP DATA : pack euro prices, customizations token costs
*/

INSERT INTO square_game.packs (name, n_token, price)
VALUES ('XL', 1000, 50),
       ('LG', 500, 30),
       ('MD', 200, 15),
       ('SM', 100, 10);

INSERT INTO square_game.customizations (type, token_cost)
VALUES ('pawns set color', 10),
       ('pawns set pattern', 20),
       ('board color', 30);


/*
    CREATE GAMES
*/

INSERT INTO square_game.games (name, min_age, size, difficulties)
VALUES ('morpion',0, 3, '{}' ),
       ('dame', 5, 8, '{}');

INSERT INTO square_game.pawns (name, pattern, move_rules)
VALUES ('simple', 'coin', '{}'),
       ('pawn', 'quil', '{}'),
       ('dame', 'double_coin', '{}');

INSERT INTO square_game.games_has_pawns (games_id, pawns_id)
VALUES (1, 1),
       (2, 1),
       (2, 3);


/*
create a set of users
*/

INSERT INTO square_game.users (login, password, avatar, pseudo, email, birth_date, jetons)
VALUES ('toto', '1234', null, 'SuperToto', 'toto@lol.com', '2000-07-14', 0),
('lulu', 'lulu', null, 'BigBoss', 'lulu@lol.com', '2020-07-15', 0),
('kiki', 'kiki', 'albatar.png', null, 'kiki@lol.com', '2050-07-16', 0);

INSERT INTO square_game.users_has_customizations (users_id, customizations_id)
VALUES (1,2),(2, 3);