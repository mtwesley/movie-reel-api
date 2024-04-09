BEGIN TRANSACTION;

INSERT INTO users (username,password_hash,role) VALUES ('user','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_USER');
INSERT INTO users (username,password_hash,role) VALUES ('admin','$2a$08$UkVvwpULis18S19S5pZFn.YHPZt3oaqHZnDwqbCW9pft6uFtkXKDC','ROLE_ADMIN');

INSERT INTO movies (api_movie_id,title,overview) VALUES ('99999','Gill Bill Vol. 2', 'Gill is back and you better watch out');

INSERT INTO movies (api_movie_id, title, poster_path, backdrop_path, overview, release_date)
    VALUES ('346364', 'It', '/9E2y5Q7WlCVNEhP5GiVTjhEhx1o.jpg', '/tcheoA2nPATCm2vvXw2hVQoaEFD.jpg',
     'In a small town in Maine, seven children known as The Losers Club come face to face with life problems, bullies and a monster that takes the shape of a clown called Pennywise.',
     '2017-09-06');

INSERT INTO movies (api_movie_id, title, poster_path, backdrop_path, overview, release_date)
    VALUES ('11', 'Star Wars', '/6FfCtAuVAW8XJjZ7eWeLibRLWTw.jpg', '/4qCqAdHcNKeAHcK8tJ8wNJZa9cx.jpg',
     'Princess Leia is captured and held hostage by the evil Imperial forces in their effort to take over the galactic Empire. Venturesome Luke Skywalker and dashing captain Han Solo team together with the loveable robot duo R2-D2 and C-3PO to rescue the beautiful princess and restore peace and justice in the Empire.',
     '1977-05-25');

INSERT INTO movies (api_movie_id, title, poster_path, backdrop_path, overview, release_date)
    VALUES ('238', 'The Godfather', '/3bhkrj58Vtu7enYsRolD1fZdja1.jpg', '/tmU7GeKVybMWFButWEGl2M4GeiP.jpg',
     'Spanning the years 1945 to 1955, a chronicle of the fictional Italian-American Corleone crime family. When organized crime family patriarch, Vito Corleone barely survives an attempt on his life, his youngest son, Michael steps in to take care of the would-be killers, launching a campaign of bloody revenge.',
      '1972-03-14');

INSERT INTO movies (api_movie_id, title, poster_path, backdrop_path, overview, release_date)
    VALUES ('7512', 'Idiocracy', '/rKsiNxKjhWEwndOgWPs273oy9EZ.jpg', '/9Z4msMhKvNp63sOB1ZvxPMPvqz3.jpg',
     'To test its top-secret Human Hibernation Project, the Pentagon picks the most average Americans it can find - an Army private and a prostitute - and sends them to the year 2505 after a series of freak events. But when they arrive, they find a civilization so dumbed-down that they are the smartest people around.',
      '2006-09-01');

INSERT INTO movies (api_movie_id, title, poster_path, backdrop_path, overview, release_date)
    VALUES ('155', 'The Dark Knight', '/qJ2tW6WMUDux911r6m7haRef0WH.jpg', '/dqK9Hag1054tghRQSqLSfrkvQnA.jpg',
     'Batman raises the stakes in his war on crime. With the help of Lt. Jim Gordon and District Attorney Harvey Dent, Batman sets out to dismantle the remaining criminal organizations that plague the streets. The partnership proves to be effective, but they soon find themselves prey to a reign of chaos unleashed by a rising criminal mastermind known to the terrified citizens of Gotham as the Joker.',
      '2008-07-16');

INSERT INTO movies (api_movie_id, title, poster_path, backdrop_path, overview, release_date)
    VALUES ('656690', 'The Social Dilemma', '/jcaM6V2tCtu6iMHDsGLBUbaYgYp.jpg', '/9plj0RR5LJOQQ77ucRZzi88uRzY.jpg',
     'This documentary-drama hybrid explores the dangerous human impact of social networking, with tech experts sounding the alarm on their own creations.',
      '2020-01-26');

INSERT INTO movies (api_movie_id, title, poster_path, backdrop_path, overview, release_date)
    VALUES ('11522', 'Pretty in Pink', '/jeFJyzJBufJexpOuywuPp8q2tCJ.jpg', '/bZneRu42OnfMJzQJ0Mn39kCI5v3.jpg',
     'Andie is an outcast, hanging out either with her older boss, who owns the record store where she works, or her quirky high school classmate Duckie, who has a crush on her. When one of the rich and popular kids at school, Blane, asks Andie out, it seems too good to be true. As Andie starts falling for Blane, she begins to realize that dating someone from a different social sphere is not easy.',
      '1986-02-28');

INSERT INTO movies (api_movie_id, title, poster_path, backdrop_path, overview, release_date)
    VALUES ('324857', 'Spider-Man: Into the Spider-Verse', '/iiZZdoQBEYBv6id8su7ImL0oCbD.jpg', '/hlCq6Qh9GVtuNcGZF4mQYluaZix.jpg',
     'Struggling to find his place in the world while juggling school and family, Brooklyn teenager Miles Morales is unexpectedly bitten by a radioactive spider and develops unfathomable powers just like the one and only Spider-Man. While wrestling with the implications of his new abilities, Miles discovers a super collider created by the madman Wilson Kingpin Fisk, causing others from across the Spider-Verse to be inadvertently transported to his dimension.',
      '2018-12-06');

INSERT INTO movies (api_movie_id, title, poster_path, backdrop_path, overview, release_date)
    VALUES ('862', 'Toy Story', '/uXDfjJbdP4ijW5hWSBrPrlKpxab.jpg', '/lxD5ak7BOoinRNehOCA85CQ8ubr.jpg',
     'Led by Woody, Andys toys live happily in his room until Andys birthday brings Buzz Lightyear onto the scene. Afraid of losing his place in Andys heart, Woody plots against Buzz. But when circumstances separate Buzz and Woody from their owner, the duo eventually learns to put aside their differences.',
      '1995-10-30');



INSERT INTO movies_genres (movie_id, genre_id) VALUES (1, 1);
INSERT INTO movies_genres (movie_id, genre_id) VALUES (2, 1);
INSERT INTO movies_genres (movie_id, genre_id) VALUES (3, 2);
INSERT INTO movies_genres (movie_id, genre_id) VALUES (4, 3);
INSERT INTO movies_genres (movie_id, genre_id) VALUES (5, 4);
INSERT INTO movies_genres (movie_id, genre_id) VALUES (6, 5);
INSERT INTO movies_genres (movie_id, genre_id) VALUES (7, 6);
INSERT INTO movies_genres (movie_id, genre_id) VALUES (8, 7);
INSERT INTO movies_genres (movie_id, genre_id) VALUES (9, 8);
INSERT INTO movies_genres (movie_id, genre_id) VALUES (10, 9);



COMMIT TRANSACTION;
