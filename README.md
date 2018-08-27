# taper
Prototyping tool for a board game prototype designed as an intro project to the ITU Games course

## Features
- Flexible setup
- 2 or 3 player games

## How to run
- Navigate to the application directory
- `love .`

## Setup
The setup can be changed by editing config.lua. The current interesting parameters are:
- Number of players
- Size of the board
- Size of the game area
- Seeding of the game area (pawns, traps, points)
- Sword clock
- Turn order

Running the application will consume these configuration parameters and generate a board.
*Note: there are some limits on the maximum sizes for the pieces due to graphics limitations. This could of course be improved upon.*

## How to play
The objective is to finish with your pieces as far Northwest as possible on the game board. Points are awarded for pieces in the goal area.
Each round of Taper consists of 3 types of moves, each of which must be taken if possible.
- Move a _Pawn_ West. A _Pawn_ may not move through another _Pawn_, _Trap_ or the edge of the board.
- Move a _Pawn_ North. Same rules apply as per moving West. 
- Move a _Trap_ East, Southeast or South. Moving a _Trap_ on to a _Pawn_ will prevent that _Pawn_ from moving until it is freed (the _Trap_ is moved off the _Pawn_).

After X turns (determined in setup), the _Swords_ will advance from the East and from the South. The _Swords_ remove all pieces in their row and column from the game. The game ends when the _Swords_ reach the edge of the goal area.