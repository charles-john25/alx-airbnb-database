-- User Sample Data
INSERT INTO User (user_id, first_name, last_name, email, password_hash, role) 
VALUES 
(UUID(), 'John', 'Doe', 'john.doe@example.com', 'hashed_password_123', 'guest'),
(UUID(), 'Jane', 'Smith', 'jane.smith@example.com', 'hashed_password_456', 'host');

-- Property Sample Data
INSERT INTO Property (property_id, host_id, name, description, location, pricepernight) 
VALUES 
(UUID(), UUID(), 'Cozy Studio Apartment', 'A beautiful studio apartment in the city center.', 'New York', 100.00),
(UUID(), UUID(), 'Beachfront Villa', 'A luxurious villa right on the beach.', 'Miami', 500.00);
