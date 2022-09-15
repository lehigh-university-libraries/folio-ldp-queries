CREATE TABLE local.instances_uris_doreen AS
   		 SELECT id AS instances_id,
    			json_extract_path_text(
          json_array_elements(json_extract_path(data,'electronicAccess')),
                                   'materialsSpecification' ) AS mat_spec,
           json_extract_path_text(
               json_array_elements(json_extract_path(data, 'electronicAccess')),
                                   'uri' ) AS uri
FROM inventory_instances;
CREATE INDEX ON local.instances_uris_doreen (instances_id);
CREATE INDEX ON local.instances_uris_doreen (mat_spec);
CREATE INDEX ON local.instances_uris_doreen (uri);
VACUUM ANALYZE local.instances_uris_doreen;