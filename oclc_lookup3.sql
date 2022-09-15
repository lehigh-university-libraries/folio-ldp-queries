CREATE TABLE local.instances_identifiers_doreen AS
    	SELECT id AS instances_id,
           json_extract_path_text(
               json_array_elements(json_extract_path(data, 'identifiers')),
                                   'identifierTypeId' ) AS type_id,
           json_extract_path_text(
               json_array_elements(json_extract_path(data, 'identifiers')),
                                   'value' ) AS value
        FROM inventory_instances;

CREATE INDEX ON local.instances_identifiers_doreen (instances_id);
CREATE INDEX ON local.instances_identifiers_doreen (type_id);
CREATE INDEX ON local.instances_identifiers_doreen (value);

VACUUM local.instances_identifiers_doreen;
ANALYZE local.instances_identifiers_doreen;