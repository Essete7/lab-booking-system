CLI Lab Booking System

This is a simple Ruby-based command-line application that simulates a laboratory resource booking system. The project is designed to practice core backend principles such as object-oriented programming, business logic implementation, and error handling.

Overview

The system enables users to reserve laboratory equipment such as microscopes or other devices. It ensures proper control of reservations by preventing double bookings and updating the status of resources when a booking is cancelled.

Features

- Manage user accounts
- Manage laboratory resources
- Reserve available resources
- Prevent multiple bookings of the same resource
- Cancel existing bookings
- Update resource availability automatically after cancellation
- Provide clear error messages for invalid operations

Project Structure

lab_booking/
│
├── app.rb              # Entry point for demonstration
├── user.rb             # Defines User class
├── resource.rb         # Defines Resource class
├── booking.rb          # Handles booking logic
├── errors.rb           # Custom error definitions
│
└── test/
    └── test_booking.rb # Unit tests using Minitest

Requirements

- Ruby version 3 or higher recommended
- Minitest library (included with Ruby)

Getting Started

1. Clone the repository
git clone https://github.com/Essete7/lab-booking-system.git
cd lab-booking-system

2. Run the program
ruby app.rb

Running Tests
ruby test/test_booking.rb

Workflow Example

- Create users and register lab resources
- Make a booking (resource becomes reserved)
- Try booking the same resource again (error occurs)
- Cancel a booking (resource becomes available again)

Core Concepts Covered

- Object-Oriented Design in Ruby
- Class relationships and responsibilities
- Business rule enforcement
- Exception handling techniques
- Unit testing using Minitest

Error Handling

The system handles invalid actions such as:

- Attempting to book an already reserved resource
- Performing actions on invalid or restricted states

Possible Improvements

- Introduce user roles (student, assistant, admin)
- Create a booking manager service layer
- Add time-based reservations (start and end time)
- Build an interactive command-line menu system
- Store data permanently using files or a database

Author

Essete Alemneh

License

This project is created for learning and educational purposes.
