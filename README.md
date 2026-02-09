# Salesforce Bulk-Safe Task Framework

A production-ready framework for handling Task creation
in a bulk-safe, governor-limit-friendly way.

## Key Concepts
- No DML inside loops
- Centralized async DML handling
- Clear separation of concerns
- Reusable service architecture

## Why This Matters
Poor Task handling is a common cause of governor limit issues.
This framework demonstrates how to refactor legacy logic into
a scalable and maintainable design.

## Author
Iqra Masood - Salesforce Administrator & Developer