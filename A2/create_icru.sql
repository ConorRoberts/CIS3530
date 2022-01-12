create table University (
        id varchar primary key,
        name varchar unique,
        city varchar,
        state varchar,
        url varchar
     );

create table Department(
    dno varchar primary key,
    name varchar,
    university_id varchar,
    foreign key(university_id) references University,
    director varchar,
    office varchar,
    phone varchar
);

create table Degree(
    id varchar primary key,
    type varchar,
    name varchar,
    university_id varchar,
    foreign key(university_id) references University
);

create table Country(
    id varchar primary key,
    name varchar
);

create table Agent(
    id varchar primary key,
    name varchar,
    phone varchar,
    email varchar,
    university_id varchar,
    country_id varchar,
    foreign key(university_id) references University,
    foreign key (country_id) references Country
);

create table Student(
    id varchar primary key,
    university_id varchar,
    country_id varchar,
    foreign key(university_id) references University,
    foreign key (country_id) references Country
);





