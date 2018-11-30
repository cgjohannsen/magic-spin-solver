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

show int target_sum = 18;
show int board[BOARD_SIZE];

show int nums_available[BOARD_SIZE];
show int size = BOARD_SIZE;

proctype fill()
{
	atomic{
		int i;
		int j;
		int k;

		for(i : 0 .. 8) {

			select(j : 0 .. (size-1));
			int pick = nums_available[j];

			for(k : j .. (size-2)){
				nums_available[k] = nums_available[k+1];
			}
			size = size - 1;

			board[i] = pick;
		}
	}	
}

init 
{
	int i;
	for(i : 1 .. BOARD_SIZE){
		nums_available[i-1] = i;
	}

	run fill();
}