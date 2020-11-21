require 'pry'

def badge_maker(name)
    "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
    badges = []
    attendees.map do |name|
        badges << "Hello, my name is #{name}."
    end
    badges
end

def assign_rooms(attendees)
    room_assignments = []
    attendees.each_with_index do |name, index|
        room = index + 1
        room_assignments << "Hello, #{name}! You'll be assigned to room #{room}!"
    end
    room_assignments
end

=begin
def printer(attendees)
    badges = batch_badge_creator(attendees)
    puts badges.chomp
    rooms = assign_rooms(attendees)
    binding.pry
end
=end

def printer(attendees)
    batch_badge_creator(attendees).each{|badge| puts badge}
    assign_rooms(attendees).each{|rooms| puts rooms}
  end