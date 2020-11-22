=begin
правда не до конца понял фокуса с текущей станцией,
как это должно в идеале выглядеть, как и путешествие между станциями
туда сюда
=end

class Train

  attr_accessor :speed, :vagons
  attr_reader :number, :type, :current_station

  def initialize(speed = 0, number, type, vagons)
    @speed = speed
    @number = number
    @type = type
    @vagons = vagons
    @current_station = current_station
  end

  def train_type
    @type
  end

  def go
    self.speed = @speed + 80
    speed
  end

  def stop
    self.speed = 0
    speed
  end

  def vagon_add
    if @speed == 0
      self.vagons = @vagons+1
    else

    end
  end

  def vagon_minus
    if @speed == 0 && @vagons != 1 then
      self.vagons = @vagons-1
    elsif @speed == 0 then

    elsif @vagons == 1 then

    end
  end

  def start_route(route)
    @current_station = route.stations[0]
  end

  def next_station(route)
    if @current_station == route.stations[0]
      route.stations[1]
    elsif @current_station == route.stations[1]
      route.stations[2]
    else

    end
  end

  def previous_station(route)
    if @current_station == route.stations[0]

    elsif @current_station == route.stations[1]
      route.stations[0]
    else
      route.stations[1]
    end
  end

  def go_forw(route)
      #if @a != 2 then
        #@a = @a+1
    if @current_station == route.stations[0]
      @current_station = route.stations[1]
    elsif @current_station == route.stations[1]
      @current_station = route.stations[2]
    else

    end
      #else
        #puts "Конечная, освободите вагон"
      #end
  end

  def go_back(route)
    #if @a != -1 then
      #@a = @a-1
    if @current_station == route.stations[0]

    elsif @current_station == route.stations[1]
      @current_station = route.stations[0]
    else
      @current_station = route.stations[1]
    end
    #else
      #puts "Конечная, освободите вагон"
    #end
  end
end
