Rule: Eliminate repeating groups — every field must have atomic (indivisible) values.

    Fix:
    Split multivalued fields into separate rows or create new tables.

| user_id | name      | email              | phone    |
|---------|-----------|--------------------|----------|
| U1      | John Doe  | john@example.com   | 12345    |
| U1      | John Doe  | jd@mail.com        | 67890    |


Rule: Must be in 1NF AND all non-key attributes must depend entirely on the primary key (not just part of it).

    Only applies to tables with composite primary keys.

    Example:
    Let’s say you had:

Booking(property_id, user_id, start_date, user_email)


3NF (Third Normal Form)

Rule: Must be in 2NF AND no transitive dependencies (non-key attributes should not depend on other non-key attributes).

    Example:

User(user_id, name, email, city, city_postal_code)


User Table

    1NF: All fields are atomic ✅

    2NF: No composite key, so 2NF satisfied ✅

    3NF: No transitive dependencies (e.g., phone_number doesn't determine role) ✅

✅ Normalized to 3NF
🔸 Property Table

    1NF: Each field is atomic ✅

    2NF: No partial dependencies (single PK: property_id) ✅

    3NF: No fields depend on other non-key fields ✅

✅ Normalized to 3NF
🔸 Booking Table

    booking_id is PK

    1NF: Atomic fields ✅

    2NF: All fields depend on booking_id ✅

    3NF: No transitive dependencies ✅

✅ Normalized to 3NF
🔸 Payment Table

    1NF: Atomic fields ✅

    2NF: booking_id is FK, not part of PK ✅

    3NF: All fields depend only on payment_id ✅

✅ Normalized to 3NF
🔸 Review Table

    1NF: No multivalued fields ✅

    2NF: All fields depend on review_id ✅

    3NF: No other dependencies ✅

✅ Normalized to 3NF
🔸 Message Table

    1NF: No multivalued fields ✅

    2NF: All fields depend on message_id ✅

    3NF: No transitive dependencies ✅

✅ Normalized to 3NF
