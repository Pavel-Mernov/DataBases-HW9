-- 1. Demographics Table Creation and Population
CREATE TABLE demographics (
    id SERIAL PRIMARY KEY,
    name VARCHAR(50),
    birthday DATE,
    race VARCHAR(50)
);

INSERT INTO demographics (name, birthday, race) VALUES
('Verlie', '1990-05-14', 'Asian'),
('Warren', '1987-09-23', 'Caucasian'),
('Horace', '1995-11-03', 'Hispanic'),
('Tracy', '1992-01-16', 'African American');

-- 2. Names Table Creation and Population
CREATE TABLE names (
    id SERIAL PRIMARY KEY,
    prefix VARCHAR(10),
    first VARCHAR(50),
    last VARCHAR(50),
    suffix VARCHAR(10)
);

INSERT INTO names (prefix, first, last, suffix) VALUES
('Mr.', 'John', 'Doe', 'Jr.'),
('Dr.', 'Jane', 'Smith', 'PhD'),
('Ms.', 'Emily', 'Davis', ''),
('Mrs.', 'Anna', 'Johnson', 'Sr.');

-- 3. Encryption Table Creation and Population
CREATE TABLE encryption (
    md5 VARCHAR(32),
    sha1 VARCHAR(40),
    sha256 VARCHAR(64)
);

INSERT INTO encryption (md5, sha1, sha256) VALUES
('e99a18c428cb38d5f260853678922e03', '356a192b7913b04c54574d18c28d46e6395428ab', 'b2e98ad6f6eb8508dd6a14cfa704bad7f05f6fb1c0a6298a52f0f25b4b8201a5'),
('ab56b4d92b40713acc5af89985d4b786', 'da39a3ee5e6b4b0d3255bfef95601890afd80709', '6f5902ac237024bdd0c176cb93063dc4'),
('827ccb0eea8a706c4c34a16891f84e7b', '5baa61e4c9b93f3f0682250b6cf8331b7ee68fd8', 'cfcd208495d565ef66e7dff9f98764da');

-- 4. Repositories Table Creation and Population
CREATE TABLE repositories (
    project VARCHAR(50),
    commits INT,
    contributors INT,
    address VARCHAR(100)
);

INSERT INTO repositories (project, commits, contributors, address) VALUES
('Bitcoin', 7, 4, '1A1zP1eP5QGefi2DMPTfTL5SLmv7DivfNa'),
('Ethereum', 4, 6, '0x742d35Cc6634C0532925a3b844Bc454e4438f44e'),
('Cardano', 5, 3, 'addr1qx8frp3rm24y3g4k8z3du7sjk4syf52mvn'),
('Polkadot', 8, 5, '15uNCesjKQTnVGoNeXhgxU3ruLPmaV9sB9');

-- 5. Products Table Creation and Population
CREATE TABLE products (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100),
    price FLOAT,
    stock INT,
    weight FLOAT,
    producer VARCHAR(50),
    country VARCHAR(50)
);

INSERT INTO products (name, price, stock, weight, producer, country) VALUES
('Milk 1L', 1.2, 50, 1000, 'DairyCo', 'USA'),
('Sugar 500g', 0.8, 100, 500, 'SweetStuff', 'Canada'),
('Flour 2kg', 3.5, 200, 2000, 'BakerBest', 'UK'),
('Olive Oil 750ml', 10.5, 30, 750, 'Mediterranean Goods', 'Spain'),
('Rice 1kg', 2.0, 80, 1000, 'RiceCorp', 'India');
