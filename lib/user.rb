require 'pry'

class User
  attr_accessor :email, :age
  @@all_users = []

  def initialize(email, age)
    @email = email
    @age = age
    @@all_users << self
  end

  def find_by_email(email)
    @@all_users.each do |user|

      if user.email == email
        return user
      end
    end
    puts "No users found with this email"
    return false
  end


  def self.all
    return @@all_users
  end

binding.pry
puts "End of user's file"

end

