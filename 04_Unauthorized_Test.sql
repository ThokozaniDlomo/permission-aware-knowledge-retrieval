SELECT
    f.fact_content,
    f.source_document
FROM facts_demo f
INNER JOIN document_acl_demo da
    ON f.document_id = da.document_id
INNER JOIN user_groups_demo ug
    ON da.group_id = ug.group_id
WHERE ug.user_id =
'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb';
