
class WorkEvent < Event

  attr_accessor :location

  def initialize(start_date, duration, title, attendees, location)
    @location = location 
    super(start_date, duration, title, attendees) 
  end

  def is_event_acceptable?

    if @attendees.length > 3 || @duration > 60
      puts "This meeting doesn'y respect the rules!"
      return false
    else
      puts "This meeting is approved."
      return true
    end
  end
end
