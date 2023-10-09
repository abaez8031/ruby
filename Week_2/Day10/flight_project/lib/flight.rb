class Flight
  attr_reader :passengers

  def initialize(flight_num, capacity)
    @flight_number = flight_num
    @capacity = capacity
    @passengers = []
  end

  def full?
    @passengers.length == @capacity
  end

  def board_passenger(passenger)
    if !full?
      if passenger.has_flight?(@flight_number)
        passenger.add_flight(@flight_number) 
        @passengers << passenger
      end
    end
  end

  def list_passengers
    @passengers.map do |passenger|
      passenger.name
    end
  end

  def [](num)
    @passengers[num]
  end

  def <<(passenger)
    board_passenger(passenger)
  end

end