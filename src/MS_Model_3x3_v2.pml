/* Board Representation: */ 
/* [0] [1] [2]			 */
/* [3] [4] [5] 			 */
/* [6] [7] [8] 			 */

/* 3x3 Board */
#define BOARD_SIZE 9 

#define row1 target_sum==(board[0]+board[1]+board[2])
#define row2 target_sum==(board[3]+board[4]+board[5])
#define row3 target_sum==(board[6]+board[7]+board[8])
#define col1 target_sum==(board[0]+board[3]+board[6])
#define col2 target_sum==(board[1]+board[4]+board[7])
#define col3 target_sum==(board[2]+board[5]+board[8])
#define diag1 target_sum==(board[0]+board[4]+board[8])
#define diag2 target_sum==(board[2]+board[4]+board[6])

show int target_sum = 15;
show int board[BOARD_SIZE];

proctype fill()
{
	atomic{
		int i;
		int j;

		for(i : 1 .. 9) {
			select(j : 0 .. 8);
			board[j] = i;
		}
	}	
}

init 
{
	run fill();
}