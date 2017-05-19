create table track(
	track_id int identity(1,1) not null,
	name varchar(25),
	topic varchar(255)
	primary key clustered (track_id asc)
);

create table location(
	location_id int identity(1,1) not null,
	loc_name varchar(25) not null,
	country varchar(50) not null,
	primary key (location_id asc)
);

create table attendees(
	attendees_id int identity(1,1) not null,
	first_name varchar(16) not null,
	last_name varchar(16) not null,
	email varchar(50) not null, 
	primary key clustered (attendees_id asc)
);

create table address(
	address_id int identity(1,1) not null,
	address varchar(50) not null,
	city varchar(50) not null,
	zip int not null,
	state varchar(50) not null,
	primary key clustered (address_id asc)
);

create table a_address(
	a_address_id int identity(1,1) not null,
	address_id int not null,
	attendees_id int not null,
	primary key clustered (a_address_id asc),
	foreign key (address_id) references address (address_id),
	foreign key (attendees_id) references attendees (attendees_id)
);

create table loc_address(
	loc_add_id int identity(1,1) not null,
	location_id int not null,
	address_id int not null,
	primary key clustered (loc_add_id asc), 
	foreign key (location_id) references location (location_id),
	foreign key (address_id) references address (address_id)
);

create table presenter(
	presenter_id int identity(1,1) not null,
	attendees_id int null,
	primary key clustered (presenter_id asc),
	foreign key (attendees_id) references attendees (attendees_id)
);

create table event(
	event_id int identity(1,1) not null,
	date date not null,
	event_name varchar(max) not null,
	location_id int not null,
	primary key clustered (event_id asc),
	foreign key (location_id) references location (location_id),
);

create table class(
	class_id int identity(1,10) not null,
	title varchar(25) not null, 
	description text not null, 
	difficulty varchar(25) not null, 
	track_id int not null,
	primary key clustered (class_id asc), 
	foreign key (track_id) references track (track_id),
);

create table class_duration(
	cd_id int identity(1,1) not null,
	class_id int not null,
	duration int not null,
	primary key clustered (cd_id asc),
	foreign key (class_id) references class (class_id)
);

create table vendor(
	vendor_id int identity(1,1) not null,
	table_number int not null check(table_number between 1 and 10),
	attendees_id int null,
	primary key clustered (vendor_id asc),
	foreign key (attendees_id) references attendees (attendees_id)
);

create table gift(
	gift_id int identity(1,1) not null,
	vendor_id int not null,
	gift_name varchar(16) not null,
	gift_description text null,
	primary key clustered (gift_id asc),
	foreign key (vendor_id) references vendor (vendor_id)
);

create table raffle(
	raffle_id int identity(1,1) not null,
	event_id int not null,
	gift_id int not null,
	attendees_id int not null,
	primary key clustered (raffle_id asc),
	foreign key (event_id) references event (event_id),
	foreign key (gift_id) references gift (gift_id),
	foreign key (attendees_id) references attendees (attendees_id)
);

create table room(
	room_id int identity(1,1) not null,
	size int not null,
	location_id int not null,
	primary key clustered (room_id asc),
	foreign key (location_id) references location (location_id)
);

create table organizer(
	organizer_id int identity(1,1) not null,
	attendees_id int not null,
	AR_id int not null,
	primary key clustered (organizer_id asc),
	foreign key (attendees_id) references attendees (attendees_id),
);

create table role(
	role_id int identity(1,1) not null,
	role_description varchar(255),
	primary key clustered (role_id asc)
);

create table attendee_role(
	AR_id int identity(1,1) not null,
	attendees_id int not null,
	role_id int not null,
	primary key clustered (AR_id asc),
	foreign key (attendees_id) references attendees (attendees_id),
	foreign key (role_id) references role (role_id)
);

create table scheduling(
	schedule_id int identity(1,1) not null,
	cd_id int not null,
	AR_id int not null,
	location_id int not null,
	primary key clustered (schedule_id asc),
	foreign key (cd_id) references class_duration (cd_id),
	foreign key (AR_id) references attendee_role (AR_id),
	foreign key (location_id) references location (location_id)
);
