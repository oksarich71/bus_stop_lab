class Bus

  attr_reader :route, :destination, :passengers

  def initialize(route, destination, passengers)
    @route = route
    @destination = destination
    @passengers = passengers
  end

  def drive()
    return "Brum brum"
  end

  def pick_up(pedestrian)
    @passengers.push(pedestrian)
  end

  def drop_off(pedestrian)
    @passengers.delete(pedestrian)
  end



end
