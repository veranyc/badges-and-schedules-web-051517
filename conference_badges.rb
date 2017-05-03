def badge_maker(name)
  badge = "Hello, my name is #{name}."
  return badge
end

def batch_badge_creator(speakers)
  #the list of badges must be stored in a new array. define a blank array first.
  badge_batch = []
  #iteration for each of the names provided in the speaker array, we need to run the badge_maker method and then push(add) what is returned to the badge_batch array
  speakers.each do |name|
    #call the badge_maker method and run it for each name
    badge = badge_maker(name)
    badge_batch << badge
  end
  return badge_batch
end

def assign_rooms(speakers)
  room_assignments = []
  speakers.each_with_index do |name, index|
    room_number = index + 1
    assignment = "Hello, #{name}! You'll be assigned to room #{room_number}!"
    room_assignments << assignment
  end
  room_assignments
end

def printer(attendees)
  speakers = ["Edsger", "Ada", "Charles", "Alan", "Grace", "Linus", "Matz"]
  badge_batch = batch_badge_creator(speakers)
  badge_batch.each do |badge|
    puts badge
  end
  room_assignments = assign_rooms(speakers)
  room_assignments.each do |assignment|
    puts assignment
  end
end
