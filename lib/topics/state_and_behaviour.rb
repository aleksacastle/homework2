# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # exercise car model
  class Car
    attr_reader :year, :color, :model, :current_speed
    
    def self.default_car
      car_attributes = {}
      new(car_attributes)
    end

    def initialize(car_attributes)
      raise ArgumentError unless car_attributes.is_a?(Hash)

      @year = car_attributes.fetch(:year, 2015)
      @color = car_attributes.fetch(:color, 'purple')
      @model = car_attributes.fetch(:model, 'skyline')
      @current_speed = 0
    end

    def speed_up(velocity)
      @current_speed += velocity
    end

    def push_break(velocity)
      @current_speed -= velocity if velocity <= @current_speed
    end
  end
end
