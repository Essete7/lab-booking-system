require_relative "./user"
require_relative "./resource"
require_relative "./booking"

puts "System starting..."

user1 = User.new(id: 1, name: "Mahi", role: "student")
user2 = User.new(id: 2, name: "John", role: "assistant")

resource1 = Resource.new(id: 1, name: "Microscope", category: "lab")
resource2 = Resource.new(id: 2, name: "Projector", category: "equipment")

booking1 = Booking.new(user: user1, resource: resource1)
puts "Booking created"

begin
  Booking.new(user: user2, resource: resource1)
rescue => e
  puts "Error: #{e.message}"
end

booking1.cancel
puts "Booking cancelled"

puts "System finished"