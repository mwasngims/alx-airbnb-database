# Airbnb Database Schema

**Directory**: `database-script-0x01`  
**Files**:
- `schema.sql`: Contains SQL `CREATE TABLE` statements with constraints and indexes.
- `README.md`: Documents the schema and design decisions.

---

## 🔧 Tables Defined

- **User**: Stores user details including role (guest, host, admin).
- **Property**: Stores listings owned by users with role `host`.
- **Booking**: Links users to properties for date-based reservations.
- **Payment**: Records payment transactions for each booking.
- **Review**: Stores user-generated reviews and ratings for properties.
- **Message**: Enables communication between users.

---

## 🔒 Constraints Applied

- `PRIMARY KEY`: Ensures each row is uniquely identifiable.
- `FOREIGN KEY`: Maintains referential integrity between tables.
- `UNIQUE`: Enforces uniqueness (e.g., emails).
- `CHECK`: Ensures valid range for `rating` values.
- `ENUM`: Restricts attributes like `role`, `status`, and `payment_method` to fixed values.

---

## 📈 Indexes

- Indexed `email` in `User` for quick lookup.
- Indexed `property_id` in `Property` and `Booking` for fast joins.
- Indexed `booking_id` in `Booking` and `Payment`.

---

## ✅ Status

All tables conform to:
- **3NF** normalization principles.
- Production-ready standards.
- Easily extensible for new features (e.g., Wishlist, Amenities, etc.).
