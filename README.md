# Permission-Aware Knowledge Retrieval PoC

This Proof of Concept (PoC) demonstrates a Permission-Aware Knowledge Retrieval model designed to ensure that users can only retrieve information they are authorized to access.

The solution implements:
- User Management
- Group Management
- Group Membership
- Document Storage
- Access Control Lists (ACLs)
- Knowledge Facts
- Provenance Tracking

---

## Solution Components

### Users

Stores user information used during authorization.

### Groups

Represents business groups used for access control.

### User Group Membership

Maps users to authorized groups.

### Documents

Stores source documents containing information.

### Access Control Lists (ACLs)

Defines which groups are allowed to access specific documents.

### Knowledge Facts

Stores retrievable facts and maintains source traceability.

---

## Repository Files

### `01_Create_Tables.sql`

Creates the database schema:
- users_demo
- groups_demo
- user_groups_demo
- documents_demo
- document_acl_demo
- facts_demo

### `02_Insert_Test_Data.sql`

Loads sample data used for testing the model.

### `03_Authorized_Test.sql`

Validates that an authorized user can retrieve protected information.

### `04_Unauthorized_Test.sql`

Validates that an unauthorized user cannot retrieve protected information.

---

## Test Scenario 1: Authorized User

### User

Finance Team Member

### Permission

Finance Team Access

### Query

Retrieve departmental budget information.

### Expected Result

- Access Granted
- Fact Retrieved
- Source Document Returned

### Actual Result

Department budget is R5 million.

Source Document:

Budget Report

✅ Test Passed

---

## Test Scenario 2: Unauthorized User

### User

General Employee

### Permission

Finance Team Access Required

### Query

Retrieve departmental budget information.

### Expected Result

- Access Denied
- No Facts Retrieved

### Actual Result

No rows returned.

✅ Test Passed

---

## Provenance Tracking

Each fact maintains a reference to its source document.

Example:

| Fact | Source Document |
|------|----------------|
| Department budget is R5 million. | Budget Report |

This ensures traceability and auditability of retrieved information.

---

## Outcome

The Proof of Concept successfully demonstrates:
- Permission-Aware Retrieval
- Group-Based Access Control
- Access Control Lists (ACLs)
- Provenance Tracking
- Authorized User Access
- Unauthorized User Restriction

---

## Author

**Thokozani Dlomo**  
Data Engineering Intern
