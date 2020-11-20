class Train
  attr_accessor :speed, :vagons
  attr_reader :number, :type
  def initialize(speed = 0, number, type, vagons)
    @speed = speed
    @number = number
    @type = type
    @vagons = vagons
  end
  def train_type
    @@type = @type
    puts "Поезд: #{@@type}"
  end
  def go
    self.speed = @speed + 80
    puts "Chooh, chooh!, скорость = #{speed}"
  end
  def stop
    self.speed = 0
    puts "Поезд остановился, скорость = #{speed}"
  end
  def vagon
    puts "У поезда #{@vagons} вагонов"
  end
  def vagon_add
    if @speed == 0 then
      self.vagons = @vagons+1
    else
      puts "Поезд в движении, сначала остановитесь"
    end
  end
  def vagon_minus
    if @speed == 0 and @vagons != 1 then
      self.vagons = @vagons-1
    elsif @speed == 0 then
      puts "Поезд в движении, сначала остановитесь"
    elsif @vagons == 1 then
      puts "Нельзя убрать больше вагонов"
    end

  end
  def start_route(route)
    @a = 0
    @start_point = route.st[@a]
    puts "Поезд на станции #{@start_point}"
    puts "Следующая станция #{route.st[@a+1]}"
    #puts @a
  end
  def go_forw(route)
      #if @a != 2 then
        #@a = @a+1
        @next_point = route.st[@a+1]
        puts "Предыдущая станция #{route.st[@a]}"
        puts "Поезд на станции #{@next_point}"
        @a = @a+1
        if @a == 2 then
          puts "Конечная"
        else
          puts "Следующая станция #{route.st[@a+1]}"
        end

      #else
        #puts "Конечная, освободите вагон"
      #end
  end
  def go_back(route)
    #if @a != -1 then
      #@a = @a-1
      @next_point = route.st[@a-1]
      puts "Предыдущая станция #{route.st[@a]}"
      puts "Поезд на станции #{@next_point}"
      @a = @a-1
      if @a == 0 then
        puts "Конечная"
      else
        puts "Следующая станция #{route.st[@a-1]}"
      end
    #else
      #puts "Конечная, освободите вагон"
    #end
  end
end

