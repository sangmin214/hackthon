SELECT
    s.segment_name AS index_name,
    s.owner AS index_owner,
    ROUND(SUM(s.bytes) / 1024 / 1024, 2) AS total_size_mb,
    ROUND(SUM(s.bytes) / 1024 / 1024 / 1024, 2) AS total_size_gb
FROM
    all_segments s
WHERE
    s.segment_name = 'YOUR_INDEX_NAME'
    AND s.owner = 'YOUR_OWNER'
    AND s.segment_type IN ('INDEX', 'INDEX PARTITION', 'INDEX SUBPARTITION')
GROUP BY
    s.segment_name,
    s.owner;
