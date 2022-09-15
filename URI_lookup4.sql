SELECT *
FROM local.uris_doreen u 
JOIN local.instances_uris_doreen iu ON iu.uri like u.uri;