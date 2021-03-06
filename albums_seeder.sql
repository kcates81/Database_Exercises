USE codeup_test_db;

INSERT INTO albums (id, artist, name, release_date, genre)

VALUES ('1', 'Shania Twain', 'Come on Over', '1997', 'country'),
('2', 'Led Zepplin', 'Led Zepplin IV', '1971', 'hard rock'),
('3', 'Michael Jackson', 'Bad', '1987', 'pop'),
('4', 'Alanis Morissette', 'Jagged Little Pill', '1995', 'alternative rock'),
('5', 'Celine Dion', 'Falling Into You', '1996', 'pop'),
('6', 'The Beatles', 'Sgt. Peppers Lonely Hearts Club Band', '1967', 'rock'),
('7', 'Eagles', 'Hotel California', '1976', 'rock'),
('8', 'Mariah Carey', 'Music Box', '1993', 'pop'),
('9', 'Michael Jackson', 'Dangerous', '1991', 'rock'),
('10', 'Various Artists', 'Dirty Dancing', '1987', 'rock'),
('11', 'Celine Dion', 'Let''s Talk About Love', '1997', 'pop'),
('12', 'The Beatles', '1', '2000', 'rock');

INSERT INTO albums (sales)
VALUES ('29.6'),
('29'),
('20.3'),
('24.8'),
('20.2'),
('13.1'),
('21.5'),
('19'),
('17.6'),
('17.9'),
('19.3'),
('21.6');

ALTER TABLE albums
ADD UNIQUE (name, artist);