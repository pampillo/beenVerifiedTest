# beenVerifiedTest
## Data Engineer Technical Challenge

### Setup of the solution

a. Install xampp engine from: https://www.apachefriends.org/es/index.html

b. Place php folder on C:\xampp\htdocs

c. Open xampp: Turn on Apache and MySql services.
		(If there are some issues refered to port allocation please refer to https://stackoverflow.com/questions/23317372/xampp-port-80-in-use-by-unable-to-open-process-with-pid-4)

d. Create the database: Open  http://localhost/phpmyadmin/ or http://localhost:8080/phpmyadmin/ (if the port was changed).

e. Open SQL tab and run musicdb.sql script.

f. The three php files can be run on 
http://localhost/php/durationAPI.php or http://localhost:8080/php/durationAPI.php 
									 
http://localhost/php/genresAPI.php or http://localhost:8080/php/genresAPI.php

http://localhost/php/songsAPI.php or http://localhost:8080/php/songsAPI.php

### PHP files

#### DurationAPI

Function in the API that returns songs by length, which we would like to
search by passing a minimum and maximum length.
URL (parsing example): http://localhost:8080/php/durationAPI.php?minDuration=10&maxDuration=900

#### GenresAPI

Function in the API that returns a list of the genres, and the number of
songs and the total length of all the songs by genre.
URL: http://localhost/php/genresAPI.php

#### SongsAPI

it delivers data on database in JSON format.
That API should make all songs searchable by artist, song, or genre. The genre
should be searchable by the name in the genres table.
http://localhost:8080/php/songsAPI.php

### Unit Testing

The tool used for unit testing is https://smartbear.com/product/ready-api/free-trial/



	
	
		