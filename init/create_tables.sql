create table if not exists trips(
	id varchar(255) primary key,
	src varchar(255) not null,
	dst varchar(255) not null,
	hour int not null check (hour >= 0 and hour <= 23),
	day int not null check (day >= 1 and day <= 365),
	trip_time int not null check (trip_time > 0),
	total_seats int not null check (total_seats > 0),
	booked int not null check (booked >= 0),
	bought int not null check (bought >= 0),
	cancelled boolean not null);

create table if not exists reservations(
	bookingId varchar(255) not null,
	tripId varchar(255) not null,
	time varchar(255) not null,
	primary key (bookingId, tripId));

create table if not exists bookingIds(
	bookingId varchar(255) primary key,
	available boolean not null default true,
	time varchar(255));

create table admins(
	username varchar(10) not null primary key,
	password varchar(255) not null,
	first_name varchar(20) not null,
  last_name varchar(20) not null);

insert into admins values ('admin', '$2y$10$nEZpvcM.sM138BJMaoQrN.A.vUYyhMYPLSYZUvEfs5iNJEjdIb66S', 'Popescu', 'Ionel');
