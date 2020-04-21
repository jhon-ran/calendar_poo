
require 'bundler'
require 'pry'
Bundler.require

require_relative 'lib/user'
require_relative 'lib/event'
require_relative 'lib/work_event'


# Tests
#john = User.new("john@gmail", 28)
#alice = User.new("alice@gmail", 35)


#event_1 = Event.new("2019-01-13 09:00", 10, "standup quotidien", [john, alice])

#event_1.age_analysis

#event_2 = Event.new("2020-03-20 10:00", 15, "opera", ["lido@gmail.com", "pat@gmail.com"])

binding.pry

