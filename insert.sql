INSERT INTO jenres(name)
VALUES('Pop');
INSERT INTO jenres(name)
VALUES('Rock');
INSERT INTO jenres(name)
VALUES('Country');
INSERT INTO jenres(name)
VALUES('Electronic');
INSERT INTO jenres(name)
VALUES('Funk');

INSERT INTO musicians(name)
VALUES('Madonna');
INSERT INTO musicians(name)
VALUES('Alice in chains');
INSERT INTO musicians(name)
VALUES('Dolly Parton');
INSERT INTO musicians(name)
VALUES('Blur');
INSERT INTO musicians(name)
VALUES('Jamiroquai');
INSERT INTO musicians(name)
VALUES('Chemical Brothers');
INSERT INTO musicians(name)
VALUES('Ariana Grande');
INSERT INTO musicians(name)
VALUES('INXS');

INSERT INTO jenres_musicians(jenres_id, musicians_id)
VALUES(1, 1);
INSERT INTO jenres_musicians(jenres_id, musicians_id)
VALUES(3, 2);
INSERT INTO jenres_musicians(jenres_id, musicians_id)
VALUES(4, 3);
INSERT INTO jenres_musicians(jenres_id, musicians_id)
VALUES(3, 4);
INSERT INTO jenres_musicians(jenres_id, musicians_id)
VALUES(6, 5);
INSERT INTO jenres_musicians(jenres_id, musicians_id)
VALUES(5, 6);
INSERT INTO jenres_musicians(jenres_id, musicians_id)
VALUES(1, 7);
INSERT INTO jenres_musicians(jenres_id, musicians_id)
VALUES(3, 8);

INSERT INTO albums(name, year)
VALUES('Madame X', 2019);
INSERT INTO albums(name, year)
VALUES('Rainier Fog', 2018);
INSERT INTO albums(name, year)
VALUES('Hello, I am Dolly', 1967);
INSERT INTO albums(name, year)
VALUES('Think Tank', 2003);	   
INSERT INTO albums(name, year)
VALUES('A Funk Odyssey', 2001);	
INSERT INTO albums(name, year)
VALUES('Push The Button', 2005);	
INSERT INTO albums(name, year)
VALUES('Sweetener', 2018);
INSERT INTO albums(name, year)
VALUES('Kick', 1987);

INSERT INTO musicians_albums(musicians_id, albums_id)
VALUES(1, 1);
INSERT INTO musicians_albums(musicians_id, albums_id)
VALUES(2, 2);
INSERT INTO musicians_albums(musicians_id, albums_id)
VALUES(3, 3);
INSERT INTO musicians_albums(musicians_id, albums_id)
VALUES(4, 4);
INSERT INTO musicians_albums(musicians_id, albums_id)
VALUES(5, 5);
INSERT INTO musicians_albums(musicians_id, albums_id)
VALUES(6, 6);
INSERT INTO musicians_albums(musicians_id, albums_id)
VALUES(7, 7);
INSERT INTO musicians_albums(musicians_id, albums_id)
VALUES(8, 8);

INSERT INTO tracks(name, length, albums_id)
VALUES('Crazy', 4.02, 1);
INSERT INTO tracks(name, length, albums_id)
VALUES('Red Giant', 5.25, 2);
INSERT INTO tracks(name, length, albums_id)
VALUES('Fly', 5.18, 2);
INSERT INTO tracks(name, length, albums_id)
VALUES('I Wasted My Tears', 2.19, 3);
INSERT INTO tracks(name, length, albums_id)
VALUES('I have lived my life', 2.28, 3);
INSERT INTO tracks(name, length, albums_id)
VALUES('Caravan', 4.36, 4);
INSERT INTO tracks(name, length, albums_id)
VALUES('Battery In Your Leg', 3.20, 4);
INSERT INTO tracks(name, length, albums_id)
VALUES('Picture Of My Life', 6.20, 5);
INSERT INTO tracks(name, length, albums_id)
VALUES('Little L', 4.55, 5);
INSERT INTO tracks(name, length, albums_id)
VALUES('Galvanize', 6.33, 6);
INSERT INTO tracks(name, length, albums_id)
VALUES('Believe', 7.01, 6);
INSERT INTO tracks(name, length, albums_id)
VALUES('No Tears Left To Cry', 3.25, 7);
INSERT INTO tracks(name, length, albums_id)
VALUES('Everytime', 2.52, 7);
INSERT INTO tracks(name, length, albums_id)
VALUES('Mystify', 3.17, 8);
INSERT INTO tracks(name, length, albums_id)
VALUES('Devil Inside', 5.14, 8);

INSERT INTO collections(name, year)
VALUES('Mystify: Michael Hutchence OST', 2019);
INSERT INTO collections(name, year)
VALUES('The Best of Country Music', 2020);
INSERT INTO collections(name, year)
VALUES('Funk Collection', 2007);
INSERT INTO collections(name, year)
VALUES('Romantic Collection', 2015);
INSERT INTO collections(name, year)
VALUES('The Best of INXS', 2002);
INSERT INTO collections(name, year)
VALUES('The Best of Pop Music', 2017);
INSERT INTO collections(name, year)
VALUES('The Best of Grunge', 2008);
INSERT INTO collections(name, year)
VALUES('Need for Speed Most Wanted OST', 2012);

INSERT INTO collections_tracks(collections_id, tracks_id)
VALUES(1, 14);
INSERT INTO collections_tracks(collections_id, tracks_id)
VALUES(2, 4);
INSERT INTO collections_tracks(collections_id, tracks_id)
VALUES(3, 9);
INSERT INTO collections_tracks(collections_id, tracks_id)
VALUES(4, 13);
INSERT INTO collections_tracks(collections_id, tracks_id)
VALUES(5, 15);
INSERT INTO collections_tracks(collections_id, tracks_id)
VALUES(6, 1);
INSERT INTO collections_tracks(collections_id, tracks_id)
VALUES(7, 3);
INSERT INTO collections_tracks(collections_id, tracks_id)
VALUES(8, 10);