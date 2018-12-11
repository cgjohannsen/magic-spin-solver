# MagicSPINSolver Project Update
### 12/11/2018

## Change in Direction
Since I last presented my project to the class on 12/4, I have pivoted in the goals of the project. My original goal coming out of the presentation was to scale the model I had to account for 4x4, 5x5, and more boards. However, I found a website (https://www.grogono.com/magic/index.php) which shows some of the very interesting math behind alternatively formatted magic squares, and quickly realized that the number of potential puzzles for larger puzzles absolutely explodes, and so for the purposes of using an explicit model checker the project became unfeasible. So I decided to take some advice and begin looking at generating 3x3 boards instead. 

## Board Generation
I outline how my model works extensively in my final report, however I'll give a quick explanation on how one can generate puzzles with the model and a never claim. 

We start by laying out the specifications we have to define for the model to generate. They are: a spaces_filled value, a seed value, and which spaces you want to be filled in the puzzle. These specifications are then all placed within an eventually operator.
(This example is in the report) For example, if we want the top row to be filled, we define spaces_filled = 3, board[0] != 0, board[1] != 0, board[2] != 0, and we pick a seed value. Note the constraints on these values: spaces_filled = [1,9], board[i] = [0,8], seed = [0,7], since there are 8 possible solution boards.
So our specification comes out as: <>((spaces_filled == 3) && (board[0] != 0) && (board[1] != 0) && (board[2] != 0) && (seed == 3))

## Puzzle Solving
If we want to solve a puzzle we do some slight modifications to our specification. spaces_filled will represent the number of spaces shown in the puzzle and we then define what spaces hold what number, no need for a seed number this time. For example if we have a puzzle with the first and third spaces filled with and 8 and 6 respectively: <>((spaces_filled == 2) && (board[0] == 8) && (board[2] == 6)) 
