    Entities and Attributes

    User:

        user_id (PK, UUID)

        first_name (VARCHAR)

        last_name (VARCHAR)

        email (VARCHAR, unique)

        password_hash (VARCHAR)

        phone_number (VARCHAR, nullable)

        role (ENUM: guest, host, admin)

        created_at (TIMESTAMP)

    Property:

        property_id (PK, UUID)

        host_id (FK, references User)

        name (VARCHAR)

        description (TEXT)

        location (VARCHAR)

        pricepernight (DECIMAL)

        created_at (TIMESTAMP)

        updated_at (TIMESTAMP)

    Booking:

        booking_id (PK, UUID)

        property_id (FK, references Property)

        user_id (FK, references User)

        start_date (DATE)

        end_date (DATE)

        total_price (DECIMAL)

        status (ENUM: pending, confirmed, canceled)

        created_at (TIMESTAMP)

    Payment:

        payment_id (PK, UUID)

        booking_id (FK, references Booking)

        amount (DECIMAL)

        payment_date (TIMESTAMP)

        payment_method (ENUM: credit_card, paypal, stripe)

    Review:

        review_id (PK, UUID)

        property_id (FK, references Property)

        user_id (FK, references User)

        rating (INTEGER, CHECK: rating between 1 and 5)

        comment (TEXT)

        created_at (TIMESTAMP)

    Message:

        message_id (PK, UUID)

        sender_id (FK, references User)

        recipient_id (FK, references User)

        message_body (TEXT)

        sent_at (TIMESTAMP)

Relationships:

    User to Property: One-to-many (A user can own multiple properties).

    User to Booking: One-to-many (A user can make multiple bookings).

    User to Review: One-to-many (A user can leave multiple reviews).

    Property to Booking: One-to-many (A property can have multiple bookings).

    Booking to Payment: One-to-one (A booking should have one payment).

    Property to Review: One-to-many (A property can have multiple reviews).

    User to Message: Many-to-many (A user can send and receive multiple messages).




   
    