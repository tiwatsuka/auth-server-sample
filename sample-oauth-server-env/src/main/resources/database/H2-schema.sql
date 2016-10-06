create table if not exists users (
	username varchar_ignorecase(50) not null primary key,
	password varchar_ignorecase(60) not null,
	enabled boolean not null
);

create table if not exists authorities (
	username varchar_ignorecase(50) not null,
	authority varchar_ignorecase(50) not null,
	constraint fk_authorities_users foreign key(username) references users(username)
);

create unique index ix_auth_username on authorities (username,authority);

create table if not exists clients (
	client_id varchar_ignorecase(50) not null primary key,
	client_secret varchar_ignorecase(60) not null,
	client_name varchar_ignorecase(255) not null
);

create table if not exists scopes (
	client_id varchar_ignorecase(50) not null,
	scope varchar_ignorecase(50) not null,
	constraint fk_scopes_clients foreign key(client_id) references clients(client_id)
);

create table if not exists resources (
	client_id varchar_ignorecase(50) not null,
	resource_id varchar_ignorecase(50) not null,
	constraint fk_resources_clients foreign key(client_id) references clients(client_id)
);

create table if not exists grants (
	client_id varchar_ignorecase(50) not null,
	grant varchar_ignorecase(50) not null,
	constraint fk_grants_clients foreign key(client_id) references clients(client_id)
);

create table if not exists redirect_urls (
	client_id varchar_ignorecase(50) not null,
	redirect_url varchar_ignorecase(255) not null,
	constraint fk_redirect_urls_clients foreign key(client_id) references clients(client_id)
);

create table if not exists client_authorities (
	client_id varchar_ignorecase(50) not null,
	authority varchar_ignorecase(50) not null,
	constraint fk_client_authorities_clients foreign key(client_id) references clients(client_id)
);

