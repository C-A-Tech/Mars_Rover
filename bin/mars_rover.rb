#!/usr/bin/ruby

class MarsRover
  def initialize
    @start_prompt = "Input instructions"
  end

  def run
    in_loop
  end

  private
  def in_loop
    p @start_prompt
    initial_input = gets.chomp

    p initial_input

  end


end

if __FILE__ == $0
  MarsRover.new.run
end