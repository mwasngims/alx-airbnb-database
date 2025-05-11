-- seed.sql

-- Insert Users
INSERT INTO User (user_id, first_name, last_name, email, password_hash, phone_number, role)
VALUES
  ('uuid-user-1', 'Alice', 'Wanjiru', 'alice@example.com', 'hash123', '0712345678', 'host'),
  ('uuid-user-2', 'Bob', 'Kamau', 'bob@example.com', 'hash456', '0723456789', 'guest'),
  ('uuid-user-3', 'Carol', 'Otieno', 'carol@example.com', 'hash789', '0734567890', 'admin');

-- Insert Properties
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight)
VALUES
  ('uuid-prop-1', 'uuid-user-1', 'Cozy Cottage', 'A peaceful countryside retreat.', 'Nanyuki, Kenya', 5000),
  ('uuid-prop-2', 'uuid-user-1', 'Beach House', 'Ocean view house perfect for holidays.', 'Diani Beach, Kenya', 12000);

-- Insert Bookings
INSERT INTO Booking (booking_id, property_id, user_id, start_date, end_date, total_price, status)
VALUES
  ('uuid-booking-1', 'uuid-prop-1', 'uuid-user-2', '2025-06-01', '2025-06-05', 20000, 'confirmed'),
  ('uuid-booking-2', 'uuid-prop-2', 'uuid-user-2', '2025-07-10', '2025-07-15', 60000, 'pending');

-- Insert Payments
INSERT INTO Payment (payment_id, booking_id, amount, payment_method)
VALUES
  ('uuid-payment-1', 'uuid-booking-1', 20000, 'credit_card'),
  ('uuid-payment-2', 'uuid-booking-2', 60000, 'paypal');

-- Insert Reviews
INSERT INTO Review (review_id, property_id, user_id, rating, comment)
VALUES
  ('uuid-review-1', 'uuid-prop-1', 'uuid-user-2', 5, 'Amazing place! Highly recommended.'),
  ('uuid-review-2', 'uuid-prop-2', 'uuid-user-2', 4, 'Lovely location, slightly noisy neighbors.');

-- Insert Messages
INSERT INTO Message (message_id, sender_id, recipient_id, message_body)
VALUES
  ('uuid-msg-1', 'uuid-user-2', 'uuid-user-1', 'Hi, is the beach house available in July?'),
  ('uuid-msg-2', 'uuid-user-1', 'uuid-user-2', 'Yes, it is available. Let me know your dates.');
