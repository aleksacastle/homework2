# frozen_string_literal: true

# exercise state and behaviour
module StateAndBehaviour
  # exercise car model
  class Car
    attr_reader :year, :color, :model, :current_speed
    
    DEFAULT_COLOR = 'purple'
 +  DEFAULT_MODEL = 'skyline'
 +  DEFAULT_YEAR = 2015
 +  DEFAULT_SPEED = 0
    
    def self.default_car
     new({})
    end

    def initialize(car_attributes)
      raise ArgumentError unless car_attributes.instance_of?(Hash)

      @year = car_attributes.fetch(:year, DEFAULT_YEAR)
      @color = car_attributes.fetch(:color, DEFAULT_COLOR)
      @model = car_attributes.fetch(:model, DEFAULT_MODEL)
      @current_speed = DEFAULT_SPEED
    end

    def speed_up(more_speed)
      @current_speed += more_speed
    end

    def push_break(less_speed)
      @current_speed -= less_speed if less_speed <= @current_speed
    end
  end
end
