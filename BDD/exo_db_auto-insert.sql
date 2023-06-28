INSERT INTO brands(name)
VALUE
("Renault"),
("Peugeot"),
("Citroën"),
("Volkswagen"),
("Audi");

INSERT INTO categories(name)
VALUE
("4x4"),
("berline"),
("citadine"),
("break"),
("coupé"),
("monospace"),
("utilitaires"),
("sans_permis");

-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "megane", 
--         (SELECT id FROM brands WHERE brands.name = "Renault"),
--         (SELECT id FROM categories WHERE categories.name = "berline")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "twingo", 
--         (SELECT id FROM brands WHERE brands.name = "Renault"),
--         (SELECT id FROM categories WHERE categories.name = "citadine")
--     );

-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "clio", 
--         (SELECT id FROM brands WHERE brands.name = "Renault"),
--         (SELECT id FROM categories WHERE categories.name = "citadine")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "zoé", 
--         (SELECT id FROM brands WHERE brands.name = "Renault"),
--         (SELECT id FROM categories WHERE categories.name = "citadine")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "twizy", 
--         (SELECT id FROM brands WHERE brands.name = "Renault"),
--         (SELECT id FROM categories WHERE categories.name = "sans_permis")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "espace", 
--         (SELECT id FROM brands WHERE brands.name = "Renault"),
--         (SELECT id FROM categories WHERE categories.name = "monospace")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "modus", 
--         (SELECT id FROM brands WHERE brands.name = "Renault"),
--         (SELECT id FROM categories WHERE categories.name = "monospace")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "scenic", 
--         (SELECT id FROM brands WHERE brands.name = "Renault"),
--         (SELECT id FROM categories WHERE categories.name = "monospace")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "106", 
--         (SELECT id FROM brands WHERE brands.name = "Peugeot"),
--         (SELECT id FROM categories WHERE categories.name = "citadine")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "107", 
--         (SELECT id FROM brands WHERE brands.name = "Peugeot"),
--         (SELECT id FROM categories WHERE categories.name = "citadine")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "108", 
--         (SELECT id FROM brands WHERE brands.name = "Peugeot"),
--         (SELECT id FROM categories WHERE categories.name = "citadine")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "206", 
--         (SELECT id FROM brands WHERE brands.name = "Peugeot"),
--         (SELECT id FROM categories WHERE categories.name = "citadine")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "207", 
--         (SELECT id FROM brands WHERE brands.name = "Peugeot"),
--         (SELECT id FROM categories WHERE categories.name = "citadine")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "208", 
--         (SELECT id FROM brands WHERE brands.name = "Peugeot"),
--         (SELECT id FROM categories WHERE categories.name = "citadine")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "306", 
--         (SELECT id FROM brands WHERE brands.name = "Peugeot"),
--         (SELECT id FROM categories WHERE categories.name = "citadine")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "307", 
--         (SELECT id FROM brands WHERE brands.name = "Peugeot"),
--         (SELECT id FROM categories WHERE categories.name = "berline")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "308", 
--         (SELECT id FROM brands WHERE brands.name = "Peugeot"),
--         (SELECT id FROM categories WHERE categories.name = "berline")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "C1", 
--         (SELECT id FROM brands WHERE brands.name = "Citröen"),
--         (SELECT id FROM categories WHERE categories.name = "citadine")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "C2", 
--         (SELECT id FROM brands WHERE brands.name = "Citröen"),
--         (SELECT id FROM categories WHERE categories.name = "citadine")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "C3", 
--         (SELECT id FROM brands WHERE brands.name = "Citröen"),
--         (SELECT id FROM categories WHERE categories.name = "berline")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "DS", 
--         (SELECT id FROM brands WHERE brands.name = "Citröen"),
--         (SELECT id FROM categories WHERE categories.name = "berline")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "Picasso", 
--         (SELECT id FROM brands WHERE brands.name = "Citröen"),
--         (SELECT id FROM categories WHERE categories.name = "monospace")
--     );
-- INSERT INTO models(name, brand_id, category_id)
-- VALUE (
--         "saxo", 
--         (SELECT id FROM brands WHERE brands.name = "Citröen"),
--         (SELECT id FROM categories WHERE categories.name = "citadine")
--     );
INSERT INTO models(name, brand_id, category_id)
VALUE (
        "Nemo", 
        (SELECT id FROM brands WHERE brands.name = "Citröen"),
        (SELECT id FROM categories WHERE categories.name = "utilitaires")
    );
INSERT INTO models(name, brand_id, category_id)
VALUE (
        "golf", 
        (SELECT id FROM brands WHERE brands.name = "Volkswagen"),
        (SELECT id FROM categories WHERE categories.name = "citadine")
    );
INSERT INTO models(name, brand_id, category_id)
VALUE (
        "coccinelle", 
        (SELECT id FROM brands WHERE brands.name = "Volkswagen"),
        (SELECT id FROM categories WHERE categories.name = "citadine")
    );
INSERT INTO models(name, brand_id, category_id)
VALUE (
        "polo", 
        (SELECT id FROM brands WHERE brands.name = "Volkswagen"),
        (SELECT id FROM categories WHERE categories.name = "citadine")
    );
INSERT INTO models(name, brand_id, category_id)
VALUE (
        "scirocco", 
        (SELECT id FROM brands WHERE brands.name = "Volkswagen"),
        (SELECT id FROM categories WHERE categories.name = "coupé")
    );
INSERT INTO models(name, brand_id, category_id)
VALUE (
        "touran", 
        (SELECT id FROM brands WHERE brands.name = "Volkswagen"),
        (SELECT id FROM categories WHERE categories.name = "monospace")
    );
INSERT INTO models(name, brand_id, category_id)
VALUE (
        "touareg", 
        (SELECT id FROM brands WHERE brands.name = "Volkswagen"),
        (SELECT id FROM categories WHERE categories.name = "4x4")
    );
INSERT INTO models(name, brand_id, category_id)
VALUE (
        "A1", 
        (SELECT id FROM brands WHERE brands.name = "Audi"),
        (SELECT id FROM categories WHERE categories.name = "citadine")
    );
INSERT INTO models(name, brand_id, category_id)
VALUE (
        "A2", 
        (SELECT id FROM brands WHERE brands.name = "Audi"),
        (SELECT id FROM categories WHERE categories.name = "citadine")
    );
INSERT INTO models(name, brand_id, category_id)
VALUE (
        "A3", 
        (SELECT id FROM brands WHERE brands.name = "Audi"),
        (SELECT id FROM categories WHERE categories.name = "berline")
    );
INSERT INTO models(name, brand_id, category_id)
VALUE (
        "A4", 
        (SELECT id FROM brands WHERE brands.name = "Audi"),
        (SELECT id FROM categories WHERE categories.name = "berline")
    );
INSERT INTO models(name, brand_id, category_id)
VALUE (
        "A5", 
        (SELECT id FROM brands WHERE brands.name = "Audi"),
        (SELECT id FROM categories WHERE categories.name = "berline")
    );
INSERT INTO models(name, brand_id, category_id)
VALUE (
        "A6", 
        (SELECT id FROM brands WHERE brands.name = "Audi"),
        (SELECT id FROM categories WHERE categories.name = "berline")
    );
INSERT INTO models(name, brand_id, category_id)
VALUE (
        "Q2", 
        (SELECT id FROM brands WHERE brands.name = "Audi"),
        (SELECT id FROM categories WHERE categories.name = "4x4")
    );
INSERT INTO models(name, brand_id, category_id)
VALUE (
        "Q3", 
        (SELECT id FROM brands WHERE brands.name = "Audi"),
        (SELECT id FROM categories WHERE categories.name = "4x4")
    );
INSERT INTO models(name, brand_id, category_id)
VALUE (
        "TT", 
        (SELECT id FROM brands WHERE brands.name = "Audi"),
        (SELECT id FROM categories WHERE categories.name = "coupé")
    );

