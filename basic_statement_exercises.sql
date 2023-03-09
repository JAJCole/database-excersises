SHOW databases;
USE albums_db;
SELECT * FROM albums;
-- What is the primary key for the albums table?
/* The primary key is the unique ID number series,
starting with 1 */

-- What does the column named 'name' represent? 
-- The 'name' column represents the names of the albums

-- What do you think the sales column represents? 
/* The sales column represents the number of albums sold
in the millions of copies. */

-- Find the name of all albums by Pink Floyd.
SELECT * from albums where artist = 'pink floyd';
/* Listed are "The Dark Side of the Moon' and 
'The Wall' */

/* What is the year Sgt. Pepper's Lonely Hearts Club Band 
was released? */
SELECT * from albums where artist = 'The Beatles';
-- The release date is 1967

-- What is the genre for the album Nevermind?
SELECT * from albums where name = 'Nevermind';
-- The genre is grunge/ alternative rock

-- Which albums were released in the 1990s?
select * from albums where release_date BETWEEN 1990 and 1999;
/* The Bodyguard, Jagged Little Pill, Come on Over, Falling into
You, Lets talk about love, Dangerous, The Immaculate Collection,
Titanic soundtrack, Metallica, Nevermind, Supernatural
where all released in the '90s. */

-- Which albums had less than 20 million certified sales?
select * from albums where sales <20;
/* Grease Sountrack, Bad, Sgt Pepper Lonely Hearts Club,
Dirty Dancing, Lets talk about Love, Dangerous, THe immaculate
Collection, Abbey Road, Born in the U.S.A, Brothers in Arms,
Nevermind, The Wall all had less than 20million copies sold*/


