insert into local (name) VALUES ('Area1'), ('Area2');

insert into item (name) VALUES ('Item1'), ('Item2');

insert into collection (name, local_id) VALUES ('Collection1', '1');

insert into collection_item (quantity, collection_id, item_id) VALUES (10, 1, 1);
