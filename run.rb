require_relative 'lib/rc_robot'
require_relative 'lib/navigation'
require_relative 'lib/warehouse'

class Run
  attr_accessor :rc_robot, :warehouse

  def warehouse_coordinates
    upper_x_point, upper_y_point = STDIN.gets.split(' ')
    @warehouse = Warehouse.new(upper_x_point, upper_y_point)
    puts warehouse
  end

  def navigate_robot
        STDIN.each_slice(2).each_with_index do |lines, index|
          x_point, y_point, dir = lines[0].split
          #raise ArgumentError, 'Invalid navigation coordinates' unless @warehouse.valid_coordinates?( x_point, y_point, dir)

          @rc_robot = RcRobot.new(index, x_point.to_i, y_point.to_i, dir.to_s)

          catch :invalid_instruction do
            # Executes each instruction sequentially
            lines[1].chomp.each_char do |command|
              throw :invalid_instruction unless navigation_protocol(command)
            end
          end
          next unless @rc_robot.id != -1
          @rc_robot.print_position
          puts "Do you want to exit(Y/N)"
          input = gets.chomp
          if input.downcase == 'y'
            exit
          end
        end
  end


  def navigation_protocol(command)
    case command
    when 'L'
      @rc_robot.rotate_left
    when 'R'
      @rc_robot.rotate_right
    when 'M'
      @rc_robot.move_forward
    else
      puts "Invalid Navigation Instruction to the Robot"
      @rc_robot.id = -1
      return false
    end
  end
end

#MAIN to execute the program
if __FILE__ == $PROGRAM_NAME
  robot_run = Run.new
  robot_run.warehouse_coordinates
  robot_run.navigate_robot
end
