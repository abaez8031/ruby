require_relative "room"

class Hotel

  attr_reader :rooms

  def initialize(name, hash)
    @name = name
    @rooms = {}
    hash.each do |name, cap|
      @rooms[name] = Room.new(cap)
    end
  end

  def name
    upper_name = []
    @name.split(" ").each do |word|
      upper_name << word[0].upcase + word[1..-1].downcase
    end
    upper_name.join(" ")
  end

  def room_exists?(name)
    @rooms.has_key?(name)
  end

  def check_in(person, room_name)
    if room_exists?(room_name)
      if @rooms[room_name].add_occupant(person)
       p "check in successfull"
      else
        p "sorry, room is full"
      end
    else
      p "sorry, room does not exist"
    end
  end

  def has_vacancy?
    rooms.values.any? { |room| room.available_space > 0}
  end

  def list_rooms
    @rooms.each do |name, room|
      puts "#{name} : #{room.available_space}"
    end

  end

end
