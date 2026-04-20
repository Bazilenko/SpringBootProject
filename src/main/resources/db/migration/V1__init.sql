CREATE TABLE brand
(
    id  SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE engine
(
    id SERIAL PRIMARY KEY,
    power DECIMAL,
    fuel_type TEXT
);

CREATE TABLE car
(
    id   SERIAL PRIMARY KEY,
    engine_id INT NOT NULL,
    brand_id INT NOT NULL,
    vin TEXT,
    model TEXT,
    price DECIMAL,
    consumption DECIMAL,
    color TEXT,
    gear_box TEXT,
    year INT,
    image TEXT,
    CONSTRAINT fk_brand FOREIGN KEY (brand_id) REFERENCES brand (id),
    CONSTRAINT fk_engine FOREIGN KEY (engine_id) REFERENCES engine (id)
);

