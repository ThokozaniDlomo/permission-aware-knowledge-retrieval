INSERT INTO groups_demo
VALUES
(
'11111111-1111-1111-1111-111111111111',
'Finance Team'
);

INSERT INTO users_demo
VALUES
(
'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa',
'finance.user@orgni.com',
'Finance'
);

INSERT INTO users_demo
VALUES
(
'bbbbbbbb-bbbb-bbbb-bbbb-bbbbbbbbbbbb',
'employee@orgni.com',
'General'
);

INSERT INTO user_groups_demo
VALUES
(
'aaaaaaaa-aaaa-aaaa-aaaa-aaaaaaaaaaaa',
'11111111-1111-1111-1111-111111111111'
);

INSERT INTO documents_demo
VALUES
(
'22222222-2222-2222-2222-222222222222',
'Budget Report',
'Department budget is R5 million.',
'SharePoint',
'Finance'
);

INSERT INTO document_acl_demo
VALUES
(
'33333333-3333-3333-3333-333333333333',
'22222222-2222-2222-2222-222222222222',
'11111111-1111-1111-1111-111111111111',
'Read'
);

INSERT INTO facts_demo
VALUES
(
'44444444-4444-4444-4444-444444444444',
'22222222-2222-2222-2222-222222222222',
'Department budget is R5 million.',
'Budget Report'
);
