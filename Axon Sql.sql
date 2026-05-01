select * from patient;
commit;
select * from doctor;
commit;
select * from labtest;
commit;
select * from treatment;
commit;
select * from visit;
commit;

SELECT COUNT(*) FROM Patient;
SELECT COUNT(*) FROM Visit;
SELECT COUNT(*) FROM Treatment;
SELECT COUNT(*) FROM Labtest;

SELECT * FROM Patient WHERE "First Name" IS NULL OR "Last Name" IS NULL;
SELECT * FROM Visit WHERE "Visit Type" IS NULL OR "Visit Date" IS NULL;
SELECT * FROM Treatment WHERE "Treatment Name" IS NULL OR Status IS NULL;
SELECT * FROM Labtest WHERE "Test Name" IS NULL OR "test Result" IS NULL;


SELECT "Visit ID", "Patient ID", "Patient ID"
FROM Visit v
LEFT JOIN Patient p ON "Patient ID" = "Patient ID"
WHERE "Patient ID" IS NULL;

SELECT "Treatment ID", "Visit ID", "Visit ID"
FROM Treatment t
LEFT JOIN Visit v ON "Visit ID" = "Visit ID"
WHERE "Visit ID" IS NULL;

SELECT "Patient ID", COUNT(*)
FROM Patient
GROUP BY "Patient ID"
HAVING COUNT(*) > 1;

SELECT "Visit ID", COUNT(*)
FROM Visit
GROUP BY "Visit ID"
HAVING COUNT(*) > 1;



SELECT SUM("Treatment Cost") FROM Treatment;
SELECT AVG(Age) FROM Patient;


SELECT * FROM Visit WHERE "Visit Date" BETWEEN '2023-01-01' AND '2023-12-31';