--BEGIN;
--CREATE TABLE local.oclc_numbers_Doreen (
    --oclc_number VARCHAR(255)
--);
INSERT INTO local.oclc_numbers_Doreen (oclc_number) VALUES ('(OCoLC)1011253277');
INSERT INTO local.oclc_numbers_Doreen (oclc_number) VALUES ('(OCoLC)1011167187');
INSERT INTO local.oclc_numbers_Doreen (oclc_number) VALUES ('(OCoLC)1011218643');
INSERT INTO local.oclc_numbers_Doreen (oclc_number) VALUES ('(OCoLC)904046246');


CREATE INDEX on local.oclc_numbers_Doreen (oclc_number);

VACUUM local.oclc_numbers_Doreen;
ANALYZE local.oclc_numbers_Doreen;