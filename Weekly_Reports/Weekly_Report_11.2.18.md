# MagicSPINSolver Weekly Report
### Week of: 11/2/18

## Goal(s) from Project Proposal
Begin work on SPIN model for 2x2 blank magic square and decide if SPIN is a feasible route to go for solving said problem.

## Progress Made
I have begun the design of the SPIN model in PROMELA. I have been able to get my model thus far to compile, but it has not behaved as I have wanted. 
At this point, I am representing the board as an integer array. I am unsure if this is the best way to represent this.
Also, I am representing each square of the magic square board as a seperate process which independently chooses a number to fill the space with. This is why I chose an integer array to represent the board since I can run each process using the _pid of each process to represent which space is being represented.
Thus far, I have been unable to get the model to function properly. I will continue to debug the model over the weekend, but I may change the approach I am taking to represent the board and each square in the board.

## Something worth noting
I was unable to make as much progress as I would have hoped since I had my paper presentation this previous week on Thursday. So most of my effort was put into that. Now that this is over, I should be able to make considerably more progress in the following weeks.