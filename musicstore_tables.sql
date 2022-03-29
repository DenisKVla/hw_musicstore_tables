create table if not exists Artist (
	ID serial primary key,
	Name varchar(40)
);

create table if not exists Genre (
	ID serial primary key,
	Name varchar(40)
);

create table if not exists ArtistGenre (
	artist_id integer references Artist(ID),
	genre_id integer references Genre(ID),
	constraint pk primary key(artist_id,genre_id)
);

create table if not exists Album (
	ID serial primary key,
	AlbumName varchar(40),
	ReleaseYear integer
);

create table if not exists ArtistAlbum (
	artist_id integer references Artist(ID),
	album_id integer references Album(ID),
	constraint aa primary key(artist_id,album_id)
);

create table if not exists Track (
	ID serial primary key,
	TrackName varchar(70),
	Duration integer,
	album_id integer references Album(ID)
); 

create table if not exists Collection (
	ID serial primary key,
	Name varchar(70),
	ReleaseYear integer
);

create table if not exists CollectionTrack (
	collection_id integer references Collection(ID),
	track_id integer references Track(ID),
	constraint ct primary key(collection_id,track_id)
);