class Navigation

  attr_accessor :x_point, :y_point, :direction

  #direction map for rotation
  @@direction_hash = {
    'N' => {'L' => 'W', 'R' => 'E'},
    'S' => {'L' => 'E', 'R' => 'W'},
    'E' => {'L' => 'N', 'R' => 'S'},
    'W' => {'L' => 'S', 'R' => 'N'}
  }

  # axis_hash gives the axis of current facing
  @@axis_hash = {
    'N' => 'Y',
    'S' => 'Y',
    'E' => 'X',
    'W' => 'X'
  }

  # value_hash informs is current facing is in +ve / -ve direction
  @@value_hash = {
    'N' => 1,
    'S' => -1,
    'E' => 1,
    'W' => -1
  }

  def initialize(x, y, dir)
    @x_point = x
    @y_point = y
    @direction = dir
    #raise ArgumentError, "Invalid coordinates" unless DIRECTIONS.include?(dir)
  end

  def move_left
    @direction = @@direction_hash[@direction]['L']
    true
  end

  def move_right
    @direction = @@direction_hash[@direction]['R']
    true
  end

  def move
    if @@axis_hash[@direction] == 'X'
      @x_point += @@value_hash[@direction]
    elsif @@axis_hash[@direction] == 'Y'
      @y_point += @@value_hash[@direction]
    end
  end

    
end