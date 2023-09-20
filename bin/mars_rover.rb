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
    initial_input = multi_gets

    p initial_input

  end

  def multi_gets(all_text='')
    until (text = gets) == "\n"
      all_text << text
    end
    return all_text.chomp
  end

end

if __FILE__ == $0
  MarsRover.new.run
end