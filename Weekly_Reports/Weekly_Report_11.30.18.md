# MagicSPINSolver Weekly Report
### Week of: 11/30/18

## Goal(s) for this week
Make model more efficient

Modify model to work on partially complete squares

Record and analyze data from various runs

## Model Overhaul
This week I completely rethought my approach to the problem. I realized that the problems I was running into completely had to do with the vastness of the state space, which was unnecessarily large. I realized the only states I needed to consider were those wherein each space in the board was a distinct integer from 1-9. My previous model considered board where each space was a non-distinct integer from 1-9, which results in 9^9 = 387420489 valid end states, and doesn't evn include all the intermediate ones. By overhauling the model, I was able to reduce the number of potential end states down to 9! = 362880 states.

### Changes Made
The model was changed in that now a single process handles all spaces of the board. It runs through each space, and selects a number/index from a seperate array of integers with numbers 1-9, called nums_available. Once that number from the nums_available array is selected, it is removed from the array so that it may not be chosen again. Then the array is shifted over and the size is decremented. This means all values in the array are distinct.  

## Partially Complete Squares
I was finally able to get my model to reason over partially filled boards accurately and consistently. I want to run many more tests to verify this, but it has worked very well for 2 differing boards under different conditions (which can be viewed in /Command_Line_Examples/v3).

## Future Work
Within the next week, or few days more accurately, I hope to extend this model to 4x4 or even 5x5 boards. This is now feasible given the size of the state space now. Also, I need to run many more tests on my model to verify it does indeed work as intended. 

### Validation
I am looing to validate my model in the next few days. One way in which I have already done this is running the model over a non-violated never claim, which outputted there were 362880 different matched states. This is equal to 9!, or the number of mathematically possible states for a 3x3 magic square board, and thus is evidence that the model reasons over the entire predicted state space. I do want to come up with at least one other more involved validation technique, however.