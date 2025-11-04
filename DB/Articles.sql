DROP TABLE IF EXISTS capitweb.articles;

CREATE TABLE IF NOT EXISTS capitweb.articles (
id				SERIAL PRIMARY KEY,
section_id		INT REFERENCES capitweb.sections (id),
name			VARCHAR UNIQUE NOT NULL,
author			VARCHAR NOT NULL,
content			TEXT UNIQUE NOT NULL
);

SELECT		*
FROM		capitweb.articles
ORDER BY	name asc;

INSERT
INTO	capitweb.articles (section_id, name, author, content)
VALUES	(NULL, 'דבר תורה',
			'אני',
			'בלה בלה בלה');