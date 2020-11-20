class Route
  attr_reader :first, :last, :middle
  def initialize(first, last)
    @first = first
    @last = last
    @stations = [first, last]

  end
  def add_station(middle)
    @stations.insert(1, * middle)
  end
  def delete_station(middle)
    @stations.delete(middle)
  end
  def show_st
    @stations.each { |station| puts station }

  end
  def st
    @stations
  end
end
