# MagicSPINSolver Weekly Report
### Week of: 11/23/18

## Goal(s) from Project Proposal
Modify models to work on partially complete magic squares

Look into methods to making model more efficient

## Road Blocks for Previous Week
The week of the 16th was very busy for me, what with various deadlines before the week of Thanksgiving, so I was unable to get almost any work done on this project that week.

## Partially Complete Squares
I have yet to get this to function properly. My attempts thus far have been to add another conjunction to my ltl specification which states that certain spaces correspond to specific values. I am thinking that this is because the state space is so large that it takes the system a very very long time to actually find an instance of this combination occuring. Therefore I may have to look into modifying my model to work more efficiently.

## Maximizing Efficiency
Admittedly, the strategy of using an explicit model checker to solve for magic squares is not the most efficient method to go about solving this problem. I am starting to think that the state space for a problem like this is simply too large to feasibly work on this style of problem. With this being said, I am still actively looking into methods for potentially improving my model, I just do not know if SPIN is able to get much better. This is simply due to the properties of explicit model checkers having to check the entire state space for a system, which for the current system is very very large.