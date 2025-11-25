SELECT
    a.index_name,
    a.index_type,
    b.column_name,
    b.column_position
FROM 
    all_indexes a
JOIN 
    all_ind_columns b 
    ON a.owner = b.index_owner
    AND a.index_name = b.index_name
WHERE 
    a.table_name = 'YOUR_TABLE_NAME'
    AND a.table_owner = 'YOUR_TABLE_OWNER' -- Use the owner here as well
ORDER BY 
    a.index_name, 
    b.column_position;
