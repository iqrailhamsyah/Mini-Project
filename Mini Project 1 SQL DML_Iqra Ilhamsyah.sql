use customer_relationship_management;
create table roles (
id int unsigned,
role_name varchar(200),
primary key (id)
);

create table customers (
id bigint unsigned,
first_name varchar(200),
last_name varchar(200),
email varchar(200),
avatar varchar(200),
created_at timestamp,
updated_at timestamp,
primary key (id)
);


create table actors (
id bigint unsigned,
username varchar(200),
password varchar(200),
role_id int unsigned,
verified_flag enum('True','False'),
active_flag enum('True','False'),
created_at timestamp,
updated_at timestamp,
primary key (id),
foreign key (role_id) references roles(id)
);

alter table actors add foreign key (username) references customers(id);

create table register (
id bigint unsigned,
admin_id bigint unsigned,
super_admin_id bigint unsigned,
status varchar(200),
primary key (id),
foreign key (admin_id) references actors(id),
foreign key (super_admin_id) references actors(id)
);

use customer_relationship_management;
insert into roles (id,role_name) values (1,'super admin');
insert into actors (id,username,password,role_id,verified_flag,active_flag,created_at,updated_at) values (1,'iqrailhamsyah','rootiqrailhamsyah',1,'true','true','2023-05-31','2023-05-31');