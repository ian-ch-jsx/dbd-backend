DROP TABLE IF EXISTS survivor_perks;

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

