puts "RESOURCE FILE LOADED"
class Resource
  attr_reader :id, :name, :category

  def initialize(id:, name:, category:)
    @id = id
    @name = name
    @category = category
    @current_booking = nil
  end

  def available?
    @current_booking.nil?
  end

  def assign_booking(booking)
    @current_booking = booking
  end

  def clear_booking
    @current_booking = nil
  end

  # Extension task: list available resources
  def self.available_resources(resources)
    resources.select { |r| r.available? }
  end
end