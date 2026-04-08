class BookingError < StandardError
end

class Booking
  attr_reader :user, :resource, :status, :created_at

  def initialize(user:, resource:)
    @user = user
    @resource = resource

    # Extension: role restriction
    unless ["student", "assistant"].include?(user.role)
      raise BookingError, "User not allowed to book"
    end

    raise BookingError, "Resource already booked" unless resource.available?

    @status = "active"
    @created_at = Time.now

    resource.assign_booking(self)
  end

  def cancel
    raise BookingError, "Already cancelled" if @status == "cancelled"

    @status = "cancelled"
    resource.clear_booking
  end
end