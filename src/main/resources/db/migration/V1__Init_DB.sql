create sequence hibernate_sequence start 1 increment 1;

create table message
(
    id int8 not null,
    filename varchar(255),
    theme varchar(255),
    primary key (id)
);

create table "user"
(
    id int8 not null,
    active boolean not null,
    password varchar(255),
    username varchar(255),
    primary key (id)
);

create table user_role
(
    user_id int8 not null,
    roles varchar(255)
);

alter table if exists user_role
    add constraint user_role_user_fk foreign key (user_id) references "user";
