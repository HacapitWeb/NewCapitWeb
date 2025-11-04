DROP TABLE IF EXISTS capitweb.sections;

CREATE TABLE IF NOT EXISTS capitweb.sections (
id				SERIAL PRIMARY KEY,
name			VARCHAR UNIQUE NOT NULL
);

SELECT		*
FROM		capitweb.sections
ORDER BY	name asc;

INSERT
INTO	capitweb.sections (name)
VALUES	();