class Station

    attr_reader :name, :trains, :types

    def initialize(name)
      @name = name
      @trains = []
      @freight_trains = []
      @passenger_trains = []
    end

    def add_train(train)
      @trains << train
      if train.type == 'грузовой'
        @freight_trains << train
      else
        @passenger_trains << train
      end
    end

    def delete_train(train)
      @trains.delete(train)
    end

    def show_freight
      @freight_trains
    end

    def show_passenger
      @passenger_trains
    end
end
