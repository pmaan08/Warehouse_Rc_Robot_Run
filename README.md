PROBLEM : RC Robots

A squad of Remote Controlled(RC) Robots are to be operated by ACME Co., in their warehouse. This warehouse, which is curiously rectangular, must be navigated by the robots so that their on-board cameras can get a complete view of their surroundings.

A robot's position and location is represented by a combination of x and y coordinates and a letter representing one of the four cardinal compass points. The warehouse is divided up into a grid to simplify navigation. An example position might be 0, 0, N, which means the robot is in the bottom left corner and facing North.

In order to control a robot, an engineer sends a simple string of letters. The possible letters are 'L', 'R' and 'M'. 'L' and 'R' makes the robot spin 90 degrees left or right respectively, without moving from its current spot. 'M' means move forward one grid point, and maintain the same heading.

Assume that the square directly North from (x, y) is (x, y+1).

INPUT:
The first line of input is the upper-right coordinates of the warehouse, the lower-left coordinates are assumed to be 0,0.
    
The rest of the input is information pertaining to the robots that have been deployed. Each robot has two lines of input. The first line gives the robot's position, and the second line is a series of instructions telling the robot how to navigate the warehouse.

The position is made up of two integers and a letter separated by spaces, corresponding to the x and y coordinates and the robot's orientation.

Each robot will be finished sequentially, which means that the second robot won't start to move until the first one has finished moving.

OUTPUT
The output for each robot should be its final coordinates and heading.


TEST INPUT AND OUTPUT

Test Input:
5 5
1 0 N
MMRMMLMMR
3 2 E
MLLMMRMM

Expected Output:
3 4 E
2 4 N
