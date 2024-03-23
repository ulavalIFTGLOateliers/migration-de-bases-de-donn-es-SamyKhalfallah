USE atelier_bd;

/*adding New table band */
CREATE TABLE band
(
    bandName varchar(50),
    creation year,
    genre    varchar(50),
    PRIMARY KEY (bandName)
);
INSERT INTO band (bandName, creation, genre) VALUE
    ('Crazy Duo', 2015, 'rock'),
    ('Luna', 2009, 'classical'),
    ('Mysterio', 2019, 'pop');


/*changes to Singer table */
ALTER TABLE singer RENAME TO musician;
ALTER TABLE musician RENAME COLUMN singerName TO musicianName;
ALTER TABLE musician
    ADD COLUMN role varchar(50);
ALTER TABLE musician
    ADD COLUMN bandName varchar(50);

UPDATE musician
SET role='vocals',
    bandName='Crazy Duo'
where musicianName = 'Alina';
UPDATE musician
SET role='guitar',
    bandName='Mysterio'
WHERE musicianName = 'Mysterio';
UPDATE musician
SET role='percussion',
    bandName='Crazy Duo'
WHERE musicianName = 'Rainbow';
UPDATE musician
SET role='piano',
    bandName='Luna'
WHERE musicianName = 'Luna';
