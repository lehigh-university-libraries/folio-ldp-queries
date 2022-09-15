SELECT oclc_numbers_doreen.oclc_number,
       instances_identifiers_doreen.instances_id,
       inventory_instances.hrid,
       inventory_instances.title,
       inventory_instances.discovery_suppress
    FROM local.oclc_numbers_doreen
        JOIN local.instances_identifiers_doreen
            ON type_id = '439bfbae-75bc-4f74-9fc7-b2a2d47ce3ef' AND
	       oclc_numbers_doreen.oclc_number = instances_identifiers_doreen.value
	JOIN inventory_instances
	    ON instances_identifiers_doreen.instances_id = inventory_instances.id;