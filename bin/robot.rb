#!/usr/bin/ruby

class Robot
  def initialize(command)
    @compass = %w[N E S W]
    @instructions = []
    @x_coordinate = 0
    @y_coordinate = 0
    @current_orientation = ""
    @directions = []
    command.scan(/[A-Za-z\d]+/) {|x| @instructions.push(x)}
  end


  def analyse_robot
    find_current_location
    find_current_orientation
    find_directions

    @compass_index = @compass.index(@current_orientation)

    @directions.each do |dir|
      if dir == "L"
        left_direction
      elsif dir == "R"
        right_direction
      elsif dir == "F"
        forward_direction
      end
    end

    return "(#{@x_coordinate}, #{@y_coordinate}, #{@current_orientation})"

  end

  private

  def find_current_location
    current_location = @instructions[0..1].map!(&:to_i)
    @x_coordinate = current_location[0]
    @y_coordinate = current_location[1]
  end

  def find_current_orientation
    @current_orientation = @instructions[2]
  end

  def find_directions
    @directions = @instructions[3].split(//)
  end

  def left_direction
    if (@compass_index -1) < 0
      @current_orientation = @compass[@compass_index  += 3]
    else
      @current_orientation = @compass[@compass_index -= 1]
    end
  end

  def right_direction
    if (@compass_index +1) > 3
      @current_orientation = @compass[@compass_index  -= 3]
    else
      @current_orientation = @compass[@compass_index += 1]
    end
  end

  def forward_direction
    case @current_orientation
    when "N"
      @y_coordinate += 1
    when "S"
      @y_coordinate -= 1
    when "E"
      @x_coordinate += 1
    when "W"
      @x_coordinate -= 1
    end
  end
end