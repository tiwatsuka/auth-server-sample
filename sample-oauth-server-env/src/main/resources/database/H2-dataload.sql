INSERT INTO users(username, password, enabled) VALUES('demo', '$2a$10$oxSJl.keBwxmsMLkcT9lPeAIxfNTPNQxpeywMrF7A3kVszwUTqfTK', true);
INSERT INTO authorities(username, authority) VALUES('demo', 'read');
INSERT INTO authorities(username, authority) VALUES('demo', 'create');
INSERT INTO authorities(username, authority) VALUES('demo', 'update');
INSERT INTO authorities(username, authority) VALUES('demo', 'delete');
commit;