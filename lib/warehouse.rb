require_relative 'navigation'
class Warehouse
  attr_accessor :upper_x_point, :upper_y_point

  DIRECTIONS = %w[N E S W]

  def initialize(upper_x_point, upper_y_point)
    @upper_x_point = upper_x_point
    @upper_y_point = upper_y_point
  end

  def valid_coordinates?(x, y, dir)
    if x.between?(0, @upper_x_point) && y.between?(0, @upper_y_point) &&
      DIRECTIONS.include?(dir)
      return true
    else
      false
    end
  end
end
