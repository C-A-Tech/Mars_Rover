require_relative '../bin/robot'

RSpec.describe "Robot" do
  it "takes in a command and updates location and orientation" do
    command = "(2,3, E) LFRFF"
    robot = Robot.new(command)
    result = robot.analyse_robot

    expect(result).to eq("(4, 4, E)")
  end
end