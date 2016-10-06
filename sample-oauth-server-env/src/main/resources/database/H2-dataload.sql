INSERT INTO users(username, password, enabled) VALUES('demo', '$2a$10$oxSJl.keBwxmsMLkcT9lPeAIxfNTPNQxpeywMrF7A3kVszwUTqfTK', true);
INSERT INTO authorities(username, authority) VALUES('demo', 'READ');
INSERT INTO authorities(username, authority) VALUES('demo', 'CREATE');
INSERT INTO authorities(username, authority) VALUES('demo', 'UPDATE');
INSERT INTO authorities(username, authority) VALUES('demo', 'DELETE');

INSERT INTO clients(client_id, client_secret, client_name) VALUES('testClient', '$2a$10$oxSJl.keBwxmsMLkcT9lPeAIxfNTPNQxpeywMrF7A3kVszwUTqfTK', 'hogehoge');
INSERT INTO scopes(client_id, scope) VALUES('testClient', 'READ');
INSERT INTO resources(client_id, resource_id) VALUES('testClient', 'testResource');
INSERT INTO grants(client_id, grant) VALUES('testClient', 'PASSWORD');
INSERT INTO redirect_urls(client_id, redirect_url) VALUES('testClient', 'http://hogehoge.hoge');
INSERT INTO client_authorities(client_id, authority) VALUES('testClient', 'USER');
commit;