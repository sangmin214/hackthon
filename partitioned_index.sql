SELECT
    a.index_name,
    a.index_type,
    a.uniqueness,
    a.partitioned,
    a.locality,
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
    AND a.table_owner = 'YOUR_TABLE_OWNER'
ORDER BY
    a.index_name,
    b.column_position;
