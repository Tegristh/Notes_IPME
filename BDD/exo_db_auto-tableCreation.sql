CREATE TABLE brands(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL
)ENGINE = INNODB;

CREATE TABLE categories(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255)
)ENGINE = INNODB;

CREATE TABLE models(
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    brand_id INT NOT NULL,
    category_id INT NOT NULL
)ENGINE = INNODB;

CREATE TABLE sellers(
    id INT AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(255),
    first_name VARCHAR(255),
    email VARCHAR(127),
    phone_number VARCHAR(15),
    location VARCHAR(255)
)ENGINE = INNODB;

CREATE TABLE listings(
    id INT AUTO_INCREMENT PRIMARY KEY,
    creation_year DATE NOT NULL,
    km INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    description TEXT NOT NULL,
    title VARCHAR(255) NOT NULL,
    publish_at DATETIME NOT NULL,
    model_id INT NOT NULL,
    seller_id INT NOT NULL
)ENGINE = INNODB;

ALTER TABLE models
    
    ADD CONSTRAINT fk_models_brands
    FOREIGN KEY (brand_id)
    REFERENCES brands(id),

    ADD CONSTRAINT fk_models_categories
    FOREIGN KEY (category_id)
    REFERENCES categories(id);

ALTER TABLE listings

    ADD CONSTRAINT fk_listings_models
    FOREIGN KEY (model_id)
    REFERENCES models(id),

    ADD CONSTRAINT fk_listings_sellers
    FOREIGN KEY (seller_id)
    REFERENCES sellers(id);

