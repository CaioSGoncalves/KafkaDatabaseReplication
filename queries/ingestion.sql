insert into local (name) VALUES ('Area1'), ('Area2');

insert into item (name) VALUES ('Item1'), ('Item2');

insert into collection (name, local_id) VALUES ('Collection1', '1');

insert into collection_item (quantity, collection_id, item_id) VALUES (10, 1, 1);

INSERT INTO collection_resume (collection_id, collection_name, item_id, item_name, quantity, local_id, local_name)
SELECT 
	collection.id as collection_id,
    collection.name as collection_name,
    item.id as item_id,
    item.name as item_name,
    collection_item.quantity as quantity,
    local.id as local_id,
    local.name as local_name
FROM collection collection
LEFT JOIN collection_item collection_item on collection_item.collection_id = collection.id
LEFT JOIN item item on item.id = collection_item.item_id
LEFT JOIN local local on local.id = collection.id;


SELECT * FROM collection_resume;
