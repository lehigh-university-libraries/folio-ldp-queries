--BEGIN;
--CREATE TABLE local.isbns_Doreen (
    --isbn_number VARCHAR(255)
--);
INSERT INTO local.isbns_Doreen (isbn_number) VALUES ('9781596294035');
INSERT INTO local.isbns_Doreen (isbn_number) VALUES ('1483339890');
INSERT INTO local.isbns_Doreen (isbn_number) VALUES ('9781483339863');


CREATE INDEX on local.isbns_Doreen (isbn_number);

VACUUM local.isbns_Doreen;
ANALYZE local.isbns_Doreen;