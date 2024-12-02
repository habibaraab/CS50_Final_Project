-- Insert a new user
INSERT INTO users (user_name, user_email, user_phone, user_password)
VALUES ('Habiba Rajab', 'bia@gmail.com', '0122376383', 'pass');

--Insert a new movie
INSERT INTO movies (movie_name, movie_language, movie_genre, movie_rating)
VALUES ('Marvel', 'English', 'Action', 'PG-13');

-- Insert a new showtime for a movie
INSERT INTO show_time (movie_id, show_time, start_time, end_time, amount)
VALUES (1, '2023-10-7 18:00:00', '2023-10-7 18:00:00', '2023-10-25 20:30:00', 300);

-- Insert a new seat
INSERT INTO seats (row_num, seat_num, available)
VALUES (1, 1, 1);

-- Book a seat for a showtime
INSERT INTO booking (showtime_id, seat_id, user_name, user_email, user_phone, booking_date, booking_status)
VALUES (1, 1, 'Habiba Rajab', 'bia@example.com', '0122376383', NOW(), 'confirmed');

-- Insert a payment for a booking
INSERT INTO payment (booking_id, total_amount, payment_method, date)
VALUES (1, 300, 'Credit Card', NOW());

-- Retrieve all bookings for a specific user
SELECT * FROM booking WHERE user_email = 'bia@example.com';

--Retrieve all available seats for a specific showtime
SELECT seat_id FROM seats WHERE available = 1 AND seat_id NOT IN (SELECT seat_id FROM booking WHERE showtime_id = 1);

--  Update the booking status
UPDATE booking SET booking_status = 'cancelled' WHERE booking_id = 1;

-- Delete a booking
DELETE FROM booking WHERE booking_id = 1;

--  Get all movies sorted by rating
SELECT * FROM movies ORDER BY movie_rating DESC;

--  Get all showtimes for a specific movie
SELECT * FROM show_time WHERE movie_id = 1;

--  Get payment details for a specific booking
SELECT * FROM payment WHERE booking_id = 1;
