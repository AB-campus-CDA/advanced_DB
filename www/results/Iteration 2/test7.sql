CREATE FUNCTION getChar(c INTEGER)
    RETURNS varchar(1) DETERMINISTIC
    RETURN (SELECT char(char_message)
            FROM message
            WHERE id = c);



SELECT CONCAT(getChar(1), getChar(2), getChar(3), getChar(4), getChar(5), getChar(6), getChar(7), getChar(8), getChar(9), getChar(10), getChar(11)) AS message;