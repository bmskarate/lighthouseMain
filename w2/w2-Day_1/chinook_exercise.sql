/* SQL Exercise
====================================================================
We will be working with database chinook.db
You can download it here: https://drive.google.com/file/d/0Bz9_0VdXvv9bWUtqM0NBYzhKZ3c/view?usp=sharing

 The Chinook Database is about an imaginary video and music store. Each track is stored using one of the digital formats and has a genre. The store has also some playlists, where a single track can be part of several playlists. Orders are recorded for customers, but are called invoices. Every customer is assigned a support employee, and Employees report to other employees.
*/


-- MAKE YOURSELF FAIMLIAR WITH THE DATABASE AND TABLES HERE





--==================================================================
/* TASK I
Which artists did not make any albums at all? Include their names in your answer.
*/
-- SELECT artists.ArtistId, artists.Name, AlbumId 
-- FROM artists
-- LEFT JOIN albums
-- ON artists.ArtistId=albums.ArtistId
-- WHERE Title IS NULL;
-- 25	Milton Nascimento & Bebeto	NULL
-- 26	Azymuth	NULL
-- 28	João Gilberto	NULL
-- 29	Bebel Gilberto	NULL
-- 30	Jorge Vercilo	NULL
-- 31	Baby Consuelo	NULL
-- 32	Ney Matogrosso	NULL
-- 33	Luiz Melodia	NULL
-- 34	Nando Reis	NULL
-- 35	Pedro Luís & A Parede	NULL
-- 38	Banda Black Rio	NULL
-- 39	Fernanda Porto	NULL
-- 40	Os Cariocas	NULL
-- 43	A Cor Do Som	NULL
-- 44	Kid Abelha	NULL
-- 45	Sandra De Sá	NULL
-- 47	Hermeto Pascoal	NULL
-- 48	Barão Vermelho	NULL
-- 49	Edson, DJ Marky & DJ Patife Featuring Fernanda Porto	NULL
-- 60	Santana Feat. Dave Matthews	NULL
-- 61	Santana Feat. Everlast	NULL
-- 62	Santana Feat. Rob Thomas	NULL
-- 63	Santana Feat. Lauryn Hill & Cee-Lo	NULL
-- 64	Santana Feat. The Project G&B	NULL
-- 65	Santana Feat. Maná	NULL
-- 66	Santana Feat. Eagle-Eye Cherry	NULL
-- 67	Santana Feat. Eric Clapton	NULL
-- 71	Vinícius De Moraes & Baden Powell	NULL
-- 73	Vinícius E Qurteto Em Cy	NULL
-- 74	Vinícius E Odette Lara	NULL
-- 75	Vinicius, Toquinho & Quarteto Em Cy	NULL
-- 107	Motörhead & Girlschool	NULL
-- 119	Peter Tosh	NULL
-- 123	R.E.M. Feat. KRS-One	NULL
-- 129	Simply Red	NULL
-- 154	Whitesnake	NULL
-- 160	Christina Aguilera featuring BigElf	NULL
-- 161	Aerosmith & Sierra Leone's Refugee Allstars	NULL
-- 162	Los Lonely Boys	NULL
-- 163	Corinne Bailey Rae	NULL
-- 164	Dhani Harrison & Jakob Dylan	NULL
-- 165	Jackson Browne	NULL
-- 166	Avril Lavigne	NULL
-- 167	Big & Rich	NULL
-- 168	Youssou N'Dour	NULL
-- 169	Black Eyed Peas	NULL
-- 170	Jack Johnson	NULL
-- 171	Ben Harper	NULL
-- 172	Snow Patrol	NULL
-- 173	Matisyahu	NULL

/* TASK II
Which artists recorded any tracks of the Latin genre?
*/
-- SELECT DISTINCT GenreId, artists.Name FROM tracks
-- LEFT JOIN artists
-- WHERE GenreId = 7
-- ORDER BY 1;

/* TASK III
Which video track has the longest length?
*/
-- SELECT MAX(Milliseconds), tracks.Name FROM tracks;
-- 5286953	Occupation / Precipice

/* TASK IV
Find the names of customers who live in the same city as the top employee (The one not managed by anyone).
*/
-- Mark	Philips

/* TASK V
Find the managers of employees supporting Brazilian customers.
*/
-- SELECT DISTINCT employees.FirstName, employees.LastName, customers.Country FROM employees
-- JOIN customers
-- WHERE employees.Title LIKE "%Manager"
-- AND customers.Country IS "Brazil";
-- Andrew	Adams	Brazil
-- Nancy	Edwards	Brazil
-- Michael	Mitchell	Brazil

/* TASK VI
Which playlists have no Latin tracks?
*/
-- SELECT DISTINCT playlist_track.PlaylistId from playlist_track
-- JOIN tracks
-- WHERE playlist_track.TrackId=tracks.TrackId
-- AND tracks.GenreId IS NOT 7;
-- PlaylistId
-- 1
-- 3
-- 5
-- 8
-- 9
-- 10
-- 12
-- 13
-- 14
-- 15
-- 16
-- 17
-- 18