CREATE TABLE users_demo (
    user_id UUID PRIMARY KEY,
    email VARCHAR(255),
    department VARCHAR(100)
);

CREATE TABLE groups_demo (
    group_id UUID PRIMARY KEY,
    group_name VARCHAR(100)
);

CREATE TABLE user_groups_demo (
    user_id UUID,
    group_id UUID,
    PRIMARY KEY (user_id, group_id)
);

CREATE TABLE documents_demo (
    document_id UUID PRIMARY KEY,
    title VARCHAR(255),
    content TEXT,
    source_system VARCHAR(100),
    owner_department VARCHAR(100)
);

CREATE TABLE document_acl_demo (
    acl_id UUID PRIMARY KEY,
    document_id UUID,
    group_id UUID,
    permission_type VARCHAR(50)
);

CREATE TABLE facts_demo (
    fact_id UUID PRIMARY KEY,
    document_id UUID,
    fact_content TEXT,
    source_document VARCHAR(255)
);
