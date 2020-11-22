class Route

  attr_reader :first, :last, :middle, :stations

  def initialize(first, last)
    @first = first
    @last = last
    @stations = [first, last]
    @middle = middle
    @stations = stations
  end

  def add_station(middle)
    stations.insert(1, * middle)
  end

  def delete_station(middle)
    stations.delete(middle)
  end

end
