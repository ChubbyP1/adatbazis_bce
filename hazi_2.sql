ALTER TABLE Vendeg
ALTER COLUMN nev varchar(100) MASKED WITH (function = 'partial(1,"XXX",1)')

ALTER TABLE Vendeg
ALTER COLUMN email varchar(100) MASKED WITH (function = 'email()')

ALTER TABLE Vendeg
ALTER COLUMN szul_dat date MASKED WITH (function = 'default()')

ALTER TABLE Vendeg
ALTER COLUMN szaml_cim varchar(100) MASKED WITH (function = 'partial(4,"XXX", 0)')

EXECUTE AS User= 'MaskUser';
SELECT * FROM Vendeg
REVERT