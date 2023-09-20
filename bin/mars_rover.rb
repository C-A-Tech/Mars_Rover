#!/usr/bin/ruby

class MarsRover
  def initialize
    @start_prompt = "Input instructions"
    @map_coordinates = []
  end

  def run
    in_loop
  end

  private
  def in_loop
    p @start_prompt
    initial_input = multi_gets.split(/\n/)

    p retrieve_map_dimensions(initial_input)

  end

  def multi_gets(all_text='')
    until (text = gets) == "\n"
      all_text << text
    end
    return all_text.chomp
  end

  def retrieve_map_dimensions(input_arr)
    map_dimensions = input_arr[0].split(/ /)
    map_dimensions.map!(&:to_i)

    @map_coordinates = [map_dimensions[0], map_dimensions[1]]
  end

end

if __FILE__ == $0
  MarsRover.new.run
end