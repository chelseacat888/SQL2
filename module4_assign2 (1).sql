-- Chelsea Smith
--Module 4 assignment 2
USE scratch_DB; --Chelsea Smith

GO

IF OBJECT_ID ('pets') IS NOT NULL
DROP TABLE pets;

IF OBJECT_ID ('owners') IS NOT NULL
DROP TABLE owners;

GO

CREATE TABLE owners (
o_name VARCHAR(24),
o_street VARCHAR(16),
o_city VARCHAR(16),
o_zipcode CHAR(5),
o_phonenumber VARCHAR(10)

CONSTRAINT owners_PK PRIMARY KEY (o_phonenumber),
CONSTRAINT NULL_o_name CHECK (o_name is NOT NULL)

);

GO

------------------------

CREATE TABLE pets (
p_id CHAR(4),
p_name VARCHAR(24),
p_vac DATETIME,
o_phonenumber VARCHAR(10)

CONSTRAINT pets_PK PRIMARY KEY (p_id),
CONSTRAINT owners_pets_FK FOREIGN KEY (o_phonenumber) REFERENCES owners(o_phonenumber) 

);

GO


INSERT INTO owners (o_name, o_street, o_city, o_zipcode, o_phonenumber)
VALUES ('Bob' , '123 4th street', 'Frisco' , '76398', '2143887890');

INSERT INTO owners (o_name, o_street, o_city, o_zipcode, o_phonenumber)
VALUES ('Jane' , '243 5th street', 'Plano' , '76345', '2145562145');

INSERT INTO owners (o_name, o_street, o_city, o_zipcode, o_phonenumber)
VALUES ('John' , '345 6th street', 'Denton' , '76209', '9403447620');

INSERT INTO owners (o_name, o_street, o_city, o_zipcode, o_phonenumber)
VALUES ('Sally' , '465 7th street', 'Dallas' , '76452', '2146768999');

INSERT INTO owners (o_name, o_street, o_city, o_zipcode, o_phonenumber)
VALUES ('Joe' , '567 8th street', 'Frisco' , '76398', '2146709898');

GO

INSERT INTO pets (p_id, p_name, p_vac, o_phonenumber)
VALUES ('6733', 'Phang', '2016-01-18', '2146709898');

INSERT INTO pets (p_id, p_name, p_vac, o_phonenumber)
VALUES ('R45E', 'Phydueax', '2016-02-22', '2146768999');

INSERT INTO pets (p_id, p_name, p_vac, o_phonenumber)
VALUES ('7Y77', 'Phreemont', '2016-01-19', '2146768999');

INSERT INTO pets (p_id, p_name, p_vac, o_phonenumber)
VALUES ('8765', 'Spot', '2016-05-01', '9403447620');

INSERT INTO pets (p_id, p_name, p_vac, o_phonenumber)
VALUES ('775R', 'Burkley', '2015-12-22', '2143887890');

GO