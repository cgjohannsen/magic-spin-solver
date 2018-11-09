# MagicSPINSolver Weekly Report
### Week of: 11/9/18

## Goal(s) from Project Proposal
Continue work on SPIN model for 2x2 system

Expand SPIN model to 3x3 system

## How does the model function?
The board is modeled as an integer array with the each index corresponding to a space in the magic square. Each space also has its own process which controls which number is currently representing the space. Each space is initialized to -1. Each process then runs concurrently, iterating the value in each space with each iteration of the respective process. Now, each space can only iterate if the number that the process wishes to select is not already represented by a space in the board. This guarantees that each space will have a unique value once the system hits deadlock. 

The ltl specification written for the model, which SPIN generates a corresponding never claim for, states that the sum of each row, column, and diagonal will eventually be equal to the target sum.

## Progress Made
### 2x2 Model
I got the 2x2 system to function properly. This did not take too much work, as the model did not have to consider one of the key rules to a magic square wherein each space in the square must have a unique number. With that being said, the model itself is functional, albeit has a few reduntant functionalities, such as calculating the sum of each row, column and diagonal while also having the global boolean constants to compare the values.

### 3x3 Model
The 3x3 model is where the fun begins. The notable differences between this system and the 2x2 system are the additional rule as stated above wherein each space must exhibit a unique number, and the number of states possible explodes. Modeling the additional unique number rule is simple enough, and runnning a basic simulation on the model will output a magic square whose sum is not necessarily valid, though each space has a unique number (refer to the /Command_Line_Examples directory for this in action). 

Notably, I was able to get the model to output a valid 3x3 magic square with a target sum of 15. This can be seen in the /Command_Line_Examples directory. The magic square the model outputted is:

![alt text](https://github.com/chrisj3/aere407-final-project-magic-SPIN-solver/blob/master/images/ms_ex1.png "Magic Square Example")


The next step is to enable the model to reason over semi complete magic squares. I have attempted to do this by adding to the ltl specification that not only will each row, column, and diagonal eventually sum to the target sum, but that specific spaces will correspond to certain values. This has proved fruitless thus far, but I will continue to tinker. I may try and edit the model itself to get this to work.

Worth noting is the state space for the model. It is BIG. It took SPIN 30 seconds to ouput the square above. This tells me a 4x4 system will not be feasible given the current model I have. Though I will cross that bridge once I get there.