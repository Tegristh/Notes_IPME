CREATE TABLE user(
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(15) NOT NULL,
    date_of_birth DATE NOT NULL,
    created_at DATETIME
)ENGINE = INNODB;

CREATE TABLE listing(
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    created_at DATETIME NOT NULL,
    title VARCHAR(255) NOT NULL,
    price DECIMAL(10,2)  NOT NULL,
    hand_drop TINYINT(1) NOT NULL,
    CONSTRAINT ck_listing_hand_drop CHECK (hand_drop IN (1,0)),
    is_sell TINYINT(1) NOT NULL,
    CONSTRAINT ck_listing_is_sell CHECK (is_sell IN (1,0))
)ENGINE = INNODB;

CREATE TABLE chat(
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    created_at DATETIME NOT NULL,
    content TEXT
)ENGINE = INNODB;

CREATE TABLE category(
    id INT AUTO_INCREMENT NOT NULL PRIMARY KEY,
    label VARCHAR(255)
)ENGINE = INNODB;

ALTER TABLE listing
    ADD COLUMN user_id INT NOT NULL,
    ADD CONSTRAINT fk_listing_user
    FOREIGN KEY (user_id)
    REFERENCES user(id);

ALTER TABLE category
    ADD COLUMN listing_id INT NOT NULL,
    ADD CONSTRAINT fk_category_listing
    FOREIGN KEY (listing_id)
    REFERENCES listing(id);

ALTER TABLE chat
    ADD COLUMN sender_id INT NOT NULL,
    ADD CONSTRAINT fk_chat_user_send
    FOREIGN KEY (sender_id)
    REFERENCES user(id),
    ADD COLUMN receiver_id INT NOT NULL,
    ADD CONSTRAINT fk_chat_user_receiver
    FOREIGN KEY (receiver_id)
    REFERENCES user(id),
    ADD COLUMN listing_id INT NOT NULL,
    ADD CONSTRAINT fk_chat_listing
    FOREIGN KEY (listing_id)
    REFERENCES listing(id);

