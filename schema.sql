DROP TABLE IF EXISTS local;
DROP TABLE IF EXISTS item;
DROP TABLE IF EXISTS collection;
DROP TABLE IF EXISTS collection_item;
DROP TABLE IF EXISTS collection_resume;


CREATE TABLE local (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,
    
    PRIMARY KEY (id)
);


CREATE TABLE item (
    id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,

    PRIMARY KEY (id)
);

CREATE TABLE collection (
	id INT(11) NOT NULL AUTO_INCREMENT,
    name VARCHAR(255) NOT NULL,

    local_id INT(11) NOT NULL,

    PRIMARY KEY (id),
    FOREIGN KEY (local_id) REFERENCES local(id)
);


CREATE TABLE collection_item (
    id INT(11) NOT NULL AUTO_INCREMENT,
    quantity INT(11) NOT NULL,

    collection_id INT(11) NOT NULL,
    item_id INT(11) NOT NULL,
    
    PRIMARY KEY (id),
    FOREIGN KEY (collection_id) REFERENCES collection(id),
    FOREIGN KEY (item_id) REFERENCES item(id)

);


CREATE TABLE collection_resume (
    collection_id INT(11) NOT NULL,
    collection_name VARCHAR(255) NOT NULL,

    item_id INT(11) NOT NULL,
    item_name VARCHAR(255) NOT NULL,

    quantity INT(11) NOT NULL,

    local_id INT(11) NOT NULL,
    local_name VARCHAR(255) NOT NULL,
    
    PRIMARY KEY (collection_id)

);