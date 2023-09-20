# Mars Rover
Mars Rover is a command line application that plots the location of robots on Mars.
It does this by using the inputted information to model the world as a grid, then by using the provided sequence of movements for each robot, it updates the robot's locations and prints out their final states.

The input takes the form:
````````
4 8
(2, 3, E) LFRFF
(0, 2, N) FFLFRFF
````````

* The first input represent the grids dimensions (m n)
* Each proceeding line represents a robot. The input for each robot includes a position (x, y) and orientation (N, E, S, W), followed by a sequence of movement commands (L, R, F)
    * (F) = move forward one space
    * (L) = rotate left by 90 degrees
    * (R) = rotate right by 90 degrees

The output takes the form:
````````
(4, 4, E)
(0, 4, W) LOST
````````

## Running the script
Install all dependencies 
``````
bundle install
``````

Make the script executable:
``````
chmod +x bin/mars_rover.rb   
``````

From the root directory call to run the application:
``````
./bin/mars_rover.rb  
``````

Type input in the format displayed above.


## Testing
Ensure you have all the dependencies installed by following the instructions above.

In the root directory, run the below command to run all tests:
``````
rspec
``````