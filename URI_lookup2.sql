INSERT INTO local.uris (uri) VALUES ('%//www.jstor.org/stable/10.2307/j.ctt7sfxj');
INSERT INTO local.uris (uri) VALUES ('%//onlinelibrary.wiley.com/doi/book/10.1002/3527603891');
INSERT INTO local.uris (uri) VALUES ('%//go.oreilly.com/lehigh-university/library/view/~/0201361213/?ar');
INSERT INTO local.uris (uri) VALUES ('%//go.oreilly.com/lehigh-university/library/view/~/9780768685336/?ar');
INSERT INTO local.uris (uri) VALUES ('%//www.jstor.org/stable/10.3366/j.ctt1r28s4');
INSERT INTO local.uris (uri) VALUES ('%//www.sciencedirect.com/science/book/9782294767968');
INSERT INTO local.uris (uri) VALUES ('%//www.sciencedirect.com/science/book/9781785482090');

CREATE INDEX ON local.uris_doreen (uri);
VACUUM ANALYZE local.uris_doreen (uri);