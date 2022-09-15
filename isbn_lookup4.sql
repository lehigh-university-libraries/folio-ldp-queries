SELECT isbns_doreen.isbn_number,
       instances_identifiers_doreen.instances_id,
       inventory_instances.hrid,
       inventory_instances.title,
       inventory_instances.discovery_suppress,
       iht."name" 
FROM local.isbns_doreen
JOIN local.instances_identifiers_doreen ON type_id = '8261054f-be78-422d-bd51-4ed9f33c3422' AND
	       instances_identifiers_doreen.value like isbns_doreen.isbn_number
JOIN inventory_instances ON instances_identifiers_doreen.instances_id = inventory_instances.id
JOIN inventory_holdings ON inventory_instances.id = inventory_holdings.instance_id 
JOIN inventory_holdings_types iht ON inventory_holdings.holdings_type_id = iht.id ;