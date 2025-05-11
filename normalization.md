# Database Normalization – Airbnb Project

**Project Repository:** `alx-airbnb-database`  
**Location:** `/normalization.md`  
**Objective:** Apply normalization principles (1NF, 2NF, 3NF) to ensure the Airbnb database schema is well-structured, free of redundancy, and maintains data integrity.

---

## 📘 What Is Normalization?

**Normalization** is a database design technique used to:
- Eliminate redundant data,
- Prevent anomalies (insert, update, delete),
- Ensure data dependencies make sense,
- Promote data integrity.

The process involves applying rules known as **Normal Forms**:
- **1NF**: No repeating groups, atomic values.
- **2NF**: No partial dependencies on composite keys.
- **3NF**: No transitive dependencies.

---

## ✅ Applying Normalization to the Airbnb ER Diagram

The Airbnb schema includes the following entities:
- `User`, `Property`, `Booking`, `Payment`, `Review`, and `Message`.

We now analyze each normalization level:

---

### 🔹 First Normal Form (1NF)
> Attributes must contain only atomic values, and each row must be unique.

✅ Applied in the schema:
- All tables use UUID primary keys.
- No lists or nested fields.
- `Message` table separates `sender_id` and `recipient_id`.

---

### 🔹 Second Normal Form (2NF)
> Must be in 1NF and all non-key attributes must depend on the entire primary key.

✅ Applied:
- All tables have single-column primary keys (no composites).
- No partial dependency exists (e.g., `Booking.total_price` depends on `booking_id`, not a part of it).

---

### 🔹 Third Normal Form (3NF)
> Must be in 2NF and have no transitive dependency.

✅ Applied:
- No derived fields or redundant data.
- `User.email`, `role`, etc. depend only on `user_id`.
- `Payment.payment_method` is not stored in the `Booking` table.

---

## 🔍 Normalization Benefits in This Schema

| Benefit                     | Example in ER Diagram                                 |
|-----------------------------|--------------------------------------------------------|
| ✅ Reduced Redundancy       | `Payment`, `Review`, and `Message` are separate tables |
| ✅ Consistent Updates       | `email` exists only in the `User` table                |
| ✅ Better Scalability       | Easily extensible to include entities like `Amenities` |
| ✅ Enforced Data Integrity  | Foreign keys ensure referential consistency            |

---

## 🧩 Summary

The Airbnb ER diagram from the `alx-airbnb-database` project fully satisfies 3NF:

- Each table has a unique primary key.
- All non-key attributes directly depend on the key.
- No transitive or partial dependencies exist.

✅ **Result:** The schema is normalized, efficient, and ready for reliable application deployment.

