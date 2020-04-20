require 'pry'
require 'time'


class Event
  attr_accessor :start_date, :duration, :title, :attendees, :end
  @@attendees = []

  def initialize(start_date, duration, title, attendees)
    @start_date = Time.parse(start_date)
    @duration = duration
    @title = title
    @attendees = attendees
    @@attendees = @@attendees << attendees
  end


  def postpone_24h
    @start_date = @start_date + 24*60*60
  end

  def end_date
    @end = @start_date + @duration * 60
  end

  def is_past?
    return @start_date < Time.now
  end

  def is_future?
    !self.is_past?
  end

  def is_soon?
    return @start_date > Time.now + 60*30
  end

  def to_s
    puts "Title: #{@title}"
    puts "Start date: #{@start_date}"
    puts "Duration: #{@duration}"
    puts "Attendees: #{@attendees.join(", ")}"
  end

  def self.all
    return @@attendees
  end

binding.pry
puts "End of event's file"
end

