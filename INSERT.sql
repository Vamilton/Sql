INSERT INTO artist(name)
VALUES('Kalandra'),
('Tigerblood Jewel'),
('Daughtry'),
('Rusty Cage'),
('Godsmack'),
('Rag''n''Bone Man'),
('Chase Holfelder'),
('Reach'),
('Sunrise Avenue'),
('Poets Of The Fall'),
('The Amazing Devil'),
('Matthew Morrison');

INSERT INTO genre(name)
VALUES('поп'),
('иностранный рок'),
('музыка мира'),
('альтернативный метал'),
('инди'),
('хард-рок'),
('альтернатива');

insert INTO artist_genre (artistid, genreid)
values (1,1),
(2,2),
(3,2),
(4,3),
(5,4),
(6,5),
(7,5),
(8,6),
(9,1),
(10,2),
(11,7),
(7,1);
(12,1);

insert INTO albums (name, year)
values ('The Line', 2020),
('The Bayou', 2020),
('Dearly Beloved', 2021),
('Gangstalkers, Vol. 4', 2018),
('The Oracle', 2010),
('Wolves', 2014),
('Major to Minor, Vol. 2', 2018),
('The Promise of a Life', 2021),
('Iron Sky', 2019),
('Ultraviolet', 2018),
('The Horror and the Wild', 2020),
('Finding Neverland', 2015),
('Clearview', 2016);

insert INTO artist_albums (artistid, albumid)
values (1,1),
(2,2),
(3,3),
(4,4),
(5,5),
(6,6),
(7,7),
(8,8),
(9,9),
(10,10),
(11,11),
(12,12),
(10,13);

insert INTO track (name, time, albumid)
values ('Brave New World',239,1),
('Ensom',270,1),
('With You',251,1),
('The Bayou',147,2),
('I Think You Better',141,2),
('Blues or Something like That',141,2),
('Evil',211,3),
('Heavy Is The Crown',234,3),
('There Isn''t Any God',206,4),
('Write Me a Letter',323,4),
('The Hearse Song',215,4),
('Love-Hate-Sex-Pain',315,5),
('I Blame You',188,5),
('Saints And Sinners',250,5),
('Sirens',189,6),
('Lay My Body Down',214,6),
('Guilty',213,6),
('What''s Up',229,7),
('My Way',270,7),
('Beauty and the Beast',270,7),
('Cover My traces',208,8),
('The Law',198,8),
('Young Again',221,8),
('Iron Sky',215,9),
('My Dark Disquiet',310,10),
('Farewell Wanderlust',328,11),
('Fair',377,11),
('Welly Boots',323,11),
('My Imagination',219,12),
('We Own The Night',252,12),
('All That Matters',216,12),
('Moonlight Kissed',246,13),
('Crystalline',224,13),
('The Labyrinth',227,13);

insert INTO collection (name, year)
values ('Mbledhja',2020),
('Versameling',2012),
('Bilduma',2012),
('Safn',2022),
('Zbirka',2017),
('Gyűjtemény',2019),
('Casgliad',2020),
('Bailiúchán',2021);

insert INTO collection_list (trackid, collid)
values (11,7),
(1,1),
(1,2),
(2,3),
(3,4),
(4,5),
(5,6),
(6,7),
(6,8),
(7,1),
(8,2),
(9,3),
(10,4),
(11,5),
(12,6),
(13,7),
(14,8),
(15,2),
(16,1),
(17,2),
(18,3),
(19,4),
(20,5),
(21,6),
(22,7),
(23,8),
(24,1),
(25,2),
(26,3),
(27,4),
(28,5),
(29,6),
(30,7),
(30,8),
(31,1),
(31,2),
(32,3),
(32,4),
(33,5),
(33,6),
(34,7),
(34,8);