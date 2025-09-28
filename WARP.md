# WARP.md

This file provides guidance to WARP (warp.dev) when working with code in this repository.

## Repository Overview

This is an Oracle Database & PL/SQL learning repository that contains:
- SQL code examples and exercises
- PL/SQL programming examples
- Oracle HR schema setup scripts
- Documentation and learning materials
- Practice problems with solutions

## Architecture & Structure

### Primary Components

**Learning Materials:**
- `README.md` - Main documentation with Oracle Database and PL/SQL overview
- `PLSQL-Examples.md` - 18+ runnable PL/SQL code examples covering major language constructs
- `Docs/` - Extensive PDF documentation including Oracle certifications, SQL cheatsheets, and reference materials

**Code Organization:**
- `SQL Code/` - Organized SQL examples by topic (operators, functions, clauses, etc.)
- `SQL Code/Tables/` - Database schema creation scripts, including the HR schema
- `SQL Code/Databases/` - Sample database files and data
- `Learn-SQL-master/` - SQL exercises with solutions (band/album database schema)

**Key Schema:**
- HR Schema - Standard Oracle sample schema with employees, departments, jobs, locations, countries, and regions tables
- Band/Album Schema - Learning exercises with bands, albums, and songs tables

### Development Environment

**Oracle Connection Methods:**
- SQL*Plus / SQLcl (command-line)
- Oracle SQL Developer (GUI IDE) 
- JDBC/ODBC connectors
- Python cx_Oracle/oracledb

**Connection Examples:**
```bash
sql / as sysdba                                    # Local OS authenticated
sql user/password@//host:port/service_name         # Remote connection
```

## Common Development Commands

### Database Setup

**Create HR Schema:**
```sql
@"SQL Code/Tables/HR+Schema+Create+Code.sql"
```

**Load Sample Data:**
```sql
@"Learn-SQL-master/schema.sql"    # Create band/album schema
@"Learn-SQL-master/data.sql"      # Load sample data
```

### Running Code Examples

**Enable Output (required for DBMS_OUTPUT):**
```sql
SET SERVEROUTPUT ON SIZE UNLIMITED
```

**Test PL/SQL Examples:**
```sql
-- Run any example from PLSQL-Examples.md
-- Examples cover: procedures, functions, packages, triggers, cursors, 
-- collections, bulk operations, exceptions, autonomous transactions
```

**SQL Exercises:**
```sql
-- Use Learn-SQL-master/ exercises (12 progressive problems)
-- Solutions available in solutions/ directory
```

## Key Development Patterns

### PL/SQL Best Practices
- Use BULK COLLECT and FORALL for high-performance operations
- Implement proper exception handling with meaningful messages
- Leverage packages for code organization and API encapsulation
- Use bind variables to prevent SQL injection and improve performance

### Common Constructs
- Anonymous blocks for ad-hoc logic
- Stored procedures and functions for reusable business logic
- Triggers for automated data validation and auditing
- Cursors for row-by-row processing
- Collections (associative arrays, nested tables) for bulk operations

### Performance Considerations
- Collect optimizer statistics regularly (DBMS_STATS)
- Use appropriate indexing strategies
- Monitor wait events for bottleneck identification
- Leverage partitioning for very large tables

## Testing & Validation

**Verify Schema Setup:**
```sql
SELECT table_name FROM user_tables;  -- Check created tables
SELECT COUNT(*) FROM employees;      -- Verify HR data loaded
```

**Run Exercise Solutions:**
```sql
@"Learn-SQL-master/solutions/1.sql"  -- Test individual solutions
-- All 12 solutions test different SQL concepts
```

## Important Files

- `SQL Code/Tables/HR+Schema+Create+Code.sql` - Complete HR schema setup
- `Learn-SQL-master/schema.sql` - Band/album exercise schema
- `PLSQL-Examples.md` - Comprehensive PL/SQL reference examples
- `SQL Code/Installation+Code.txt` - Installation instructions

## Development Context

This repository is primarily educational, focusing on Oracle SQL and PL/SQL skill development. The code examples progress from basic SQL operations to advanced PL/SQL programming concepts including packages, triggers, collections, and performance optimization techniques.

The HR schema serves as the standard Oracle sample database for most examples, while the Learn-SQL exercises provide structured practice problems with a music industry data model.