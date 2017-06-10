# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # exercise car model
  class Car
    attr_reader :year, :color, :model, :current_speed
    def self.default_car
      Car.new {}
    end

    def initialize(args)
      raise ArgumentError if args.class != Hash

      @year ||= 2015
      @color ||= 'purple'
      @model ||= 'skyline'
      @current_speed ||= 0
    end

    def speed_up(velocity)
      @current_speed += velocity
    end

    def push_break(velocity)
      @current_speed -= velocity if velocity <= @current_speed
    end
  end
end
