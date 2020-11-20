class Station


    attr_reader :name, :trains
    def initialize(name)
      @name = name
      @trains = []
    end
    def add_train(train)
      @trains << train

    end
    def delete_train(train)
      @trains.delete(train)


    end
    def show_type
      @trains.each { |train| puts train.type }

    end
  end
