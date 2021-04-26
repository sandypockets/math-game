# math-game
A simple, 2 player, command line game written in Ruby. 

Users begin with 3 lives. The program takes in a username from each player, and alternates asking each user simple addition questions. A user loses a life when they answer incorrectly. The game continues until one user run out of lives. 

### Sample Output

```
Welcome to the two player Math Game!
Player 1, please enter your name... 
PLAYER 1
Thank you PLAYER 1.
Player 2, please enter your name... 
PLAYER 2
Thank you PLAYER 2.
------ NEW TURN ------
PLAYER 1, you're up!
What is the sum of 1 and 9?
10
You got it right!
------ PLAYER 1: 3/3 vs PLAYER 2: 3/3 ------
PLAYER 2, you're up!
What is the sum of 13 and 0?
1
Incorrect!
------ PLAYER 1: 3/3 vs PLAYER 2: 2/3 ------
------ NEW TURN ------
PLAYER 1, you're up!
What is the sum of 1 and 9?
```

Eventually, the game will end

```
------ PLAYER 1: 1/3 vs PLAYER 2: 0/3 ------
PLAYER 1 wins, with 1 life remaining!
Goodbye
```

## Getting Started

1. Clone the repo to your local machine.
2. Run `ruby main.rb` from the `math-game` directory.

## Purpose of this project
This project was created to gain familiarity with Ruby classes. The two classes used for this project are `Players` and `Questions`. The game's state is managed in the `Players` class instance, via the amount of lives each player has remaining. 

## Project Roadmap
Stretch features to be implemented at a later date:
- Additional question types (subtraction, multiplication, division)
- Option for additional players to be added on game start
- Option to play the computer instead of requiring a second player
- Wrap the welcome messages into a method