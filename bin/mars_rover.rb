#!/usr/bin/ruby
require_relative './robot.rb'

class MarsRover
  def initialize
    @start_prompt = "Input instructions"
    @map_coordinates = []
    @robots = []
  end

  def run
    in_loop
  end

  private
  def in_loop
    p @start_prompt
    initial_input = multi_gets.split(/\n/)
    extract_map_dimensions(initial_input)
    extract_robots(initial_input)
    @robots.each do |robot|
      new_coordinates = robot.analyse_robot
      p new_coordinates
    end
  end

  def multi_gets(all_text='')
    until (text = gets) == "\n"
      all_text << text
    end
    return all_text.chomp
  end

  def extract_map_dimensions(input_arr)
    map_dimensions = input_arr[0].split(/ /)
    map_dimensions.map!(&:to_i)

    @map_coordinates = [map_dimensions[0], map_dimensions[1]]
  end

  def extract_robots(input_arr)
    robot_commands = input_arr.drop(1)

    robot_commands.each do |command|
      robot = Robot.new(command)
      @robots << robot
    end

    return @robots
  end

end

if __FILE__ == $0
  MarsRover.new.run
end