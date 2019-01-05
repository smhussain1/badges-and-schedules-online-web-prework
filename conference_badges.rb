require pry
name = "Arel" 
attendees = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]

def badge_maker(name)
  return "Hello, my name is #{name}."
end

def batch_badge_creator(attendees)
  new_attendees = []
  attendees.each do |name|
    new_attendees << "Hello, my name is #{name}."
  end
  return new_attendees  
end 
  
def assign_rooms(attendees)
  rooms = []
  binding.pry 
  attendees.each_with_index do |name, num| 
    rooms[num] = "Hello, #{name}! You'll be assigned to room #{num + 1}!" 
  end 
  return rooms 
end 

def printer(attendees)
  print_badges = batch_badge_creator(attendees)
  print_badges.each do |badge|
    puts badge
  end
  
  rooms = assign_rooms(attendees)
  rooms.each do |room|
    puts room
  end
end




badge_maker(name)
printer(attendees)




