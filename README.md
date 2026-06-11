# Nursing Home Management Database System

## Overview
CareConnect is an Oracle PL/SQL database system designed to support nursing home operations, including resident records, room assignments, staff information, medications, care plans, and visitor management.

## My Role
I was responsible for database schema design, stored procedures, triggers, constraints, and exception handling.

## Technologies
- Oracle SQL Developer
- SQL
- PL/SQL
- ER Modeling
- Relational Database Design

## Key Features
- Designed a normalized relational database with 6 core tables: Room, Staff, Resident, Visitors, Medication, and CarePlan
- Developed CRUD stored procedures for resident record management
- Implemented reusable validation logic with a `resident_exists` function
- Added exception handling for duplicate inserts, invalid input values, missing residents, and foreign-key delete conflicts
- Designed validation and audit triggers to improve data integrity and track medical history changes

## Sample Procedures
- `add_resident`
- `get_resident_info`
- `update_resident_history`
- `delete_resident`

## Security and Ethics
The system handles sensitive resident and medical information. Audit triggers and controlled procedures were designed to support accountability, privacy, and data integrity.
