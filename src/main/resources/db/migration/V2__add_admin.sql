insert into "user"(id, username, password, active)
values (1, 'julia', 'julia11', true);

insert into user_role(user_id, roles)
values (1, 'ADMIN');