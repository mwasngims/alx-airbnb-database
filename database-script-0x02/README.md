# Airbnb Sample Data

**Directory**: `database-script-0x02`  
**Files**:
- `seed.sql`: Contains `INSERT INTO` statements to populate the database with sample data.
- `README.md`: Documents the purpose and contents of the data seeding script.

---

## 📦 Sample Data Overview

The sample data simulates a realistic Airbnb setup including:

- **3 Users**: One host, one guest, one admin.
- **2 Properties**: Hosted by Alice (host).
- **2 Bookings**: Made by Bob (guest), with different statuses.
- **2 Payments**: Covering the bookings using different methods.
- **2 Reviews**: Feedback from guest to properties.
- **2 Messages**: Communication between host and guest.

---

## 🔧 Usage

Run the SQL script in your database environment **after** running the schema creation (`schema.sql`).

```bash
psql your_database_name < schema.sql
psql your_database_name < seed.sql
