SELECT 
	collection.id as collectionId,
    collection.name as collectionName,
    item.id as itemId,
    item.name as itemName,
    local.id as localId,
    local.name as localName
FROM collection collection
LEFT JOIN collection_item collection_item on collection_item.collection_id = collection.id
LEFT JOIN item item on item.id = collection_item.item_id
LEFT JOIN local local on local.id = collection.id;