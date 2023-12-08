CREATE TABLE IF NOT EXISTS clients (
	id IDENTITY PRIMARY KEY,
	name VARCHAR(200) NOT NULL CHECK (LENGTH(name) BETWEEN 3 AND 200),
	UNIQUE (id)
);

CREATE TABLE IF NOT EXISTS planets (
	id VARCHAR(10) PRIMARY KEY CHECK (id ~ '^[A-Z0-9]+$'),
	name VARCHAR(500) NOT NULL CHECK (LENGTH(name) BETWEEN 1 AND 500)
);
