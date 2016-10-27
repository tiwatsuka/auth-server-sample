INSERT INTO users(username, password, enabled) VALUES('demo', '$2a$10$oxSJl.keBwxmsMLkcT9lPeAIxfNTPNQxpeywMrF7A3kVszwUTqfTK', true);
INSERT INTO users(username, password, enabled) VALUES('demo2', '$2a$10$oxSJl.keBwxmsMLkcT9lPeAIxfNTPNQxpeywMrF7A3kVszwUTqfTK', true);
INSERT INTO authorities(username, authority) VALUES('demo', 'ROLE_USER');
INSERT INTO authorities(username, authority) VALUES('demo', 'ROLE_ADMIN');
INSERT INTO authorities(username, authority) VALUES('demo2', 'ROLE_USER');

INSERT INTO clients(client_id, client_secret, client_name) VALUES('testClient', '$2a$10$oxSJl.keBwxmsMLkcT9lPeAIxfNTPNQxpeywMrF7A3kVszwUTqfTK', 'hogehoge');
INSERT INTO scopes(client_id, scope) VALUES('testClient', 'READ');
INSERT INTO resources(client_id, resource_id) VALUES('testClient', 'testResource');
INSERT INTO grants(client_id, grant) VALUES('testClient', 'AUTHORIZATION_CODE');
INSERT INTO grants(client_id, grant) VALUES('testClient', 'CLIENT_CREDENTIALS');
INSERT INTO grants(client_id, grant) VALUES('testClient', 'CUSTOM');
INSERT INTO redirect_urls(client_id, redirect_url) VALUES('testClient', 'http://localhost:8080/sample-oauth-client-web/');
INSERT INTO client_authorities(client_id, authority) VALUES('testClient', 'USER');
commit;