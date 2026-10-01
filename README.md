# Pharmacy Management Database System

## Overview

A MySQL-based Pharmacy Management Database System designed to manage medicines, pharmacists, customers, and sales.

## Technologies

- MySQL
- SQL
- Relational Database Design

## Database Tables

The database contains four main tables:

- `Medicines` — stores medicine names, prices, and quantities.
- `Pharmacists` — stores pharmacist information.
- `Customers` — stores customer information.
- `Sales` — records sales and connects medicines with customers.

## Database Relationships

The `Sales` table uses foreign keys to connect:

- `MedicineID` → `Medicines`
- `CustomerID` → `Customers`

This creates relationships between sales, medicines, and customers.

## SQL Operations

The project demonstrates:

- Database creation
- Table creation
- Primary keys
- Foreign keys
- Data insertion using `INSERT`
- Data retrieval using `SELECT`
- Sorting using `ORDER BY`
- Removing duplicates using `DISTINCT`
- Updating records using `UPDATE`
- Deleting records using `DELETE`

## Project Structure

```text
pharmacy-management-database/
│
├── README.md
├── database.sql
└── screenshots/
