DROP TABLE IF EXISTS survivor_perks, killer_perks;

CREATE TABLE survivor_perks (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    image TEXT NOT NULL
);

INSERT INTO 
    survivor_perks ( name, category, image)
VALUES 
('Dead Hard', 'exhaustion', 'image source url'),
('Adrenaline', 'exhaustion', 'image source url'),
('Inner Strength', 'healing', 'image source url');

CREATE TABLE killer_perks (
    id BIGINT GENERATED ALWAYS AS IDENTITY PRIMARY KEY,
    name TEXT NOT NULL,
    category TEXT NOT NULL,
    image TEXT NOT NULL
);

INSERT INTO 
    killer_perks (name, category, image)
VALUES
    ('Hex: Blood Favor', 'hex', 'image source url'),
    ('Iron Maiden', 'expose', 'image source url'),
    ('Corrupt Intervention', 'slowdown', 'image source url')