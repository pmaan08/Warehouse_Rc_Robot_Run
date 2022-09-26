require_relative 'navigation'

class RcRobot
  attr_accessor :id, :nav
  def initialize(index, x_point, y_point, direction)
    @id = index
    @nav = Navigation.new(x_point, y_point, direction)
  end

  def print_position
    puts [@nav.x_point, @nav.y_point, @nav.direction ].join(' ')
  end

  def move_forward
    @nav.move
  end

  def rotate_left
    @nav.move_left
  end

  def rotate_right
    @nav.move_right
  end

end