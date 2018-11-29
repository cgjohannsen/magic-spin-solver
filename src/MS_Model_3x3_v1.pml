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

init {
	board[0] = -1;
	board[1] = -1;
	board[2] = -1;
	board[3] = -1;
	board[4] = -1;
	board[5] = -1;
	board[6] = -1;
	board[7] = -1;
	board[8] = -1;
}

active[BOARD_SIZE] proctype fill_board()
{
atomic{
	(board[0]!=0 && board[1]!=0 && board[2]!=0 && board[3]!=0 && board[4]!=0 && 
		board[5]!=0 && board[6]!=0 && board[7]!=0 && board[8]!=0) ->
	board[_pid-1] = 0;
}

atomic{
	(board[0]!=1 && board[1]!=1 && board[2]!=1 && board[3]!=1 && board[4]!=1 && 
		board[5]!=1 && board[6]!=1 && board[7]!=1 && board[8]!=1) ->
	board[_pid-1] = 1;
}
atomic{
	(board[0]!=2 && board[1]!=2 && board[2]!=2 && board[3]!=2 && board[4]!=2 && 
		board[5]!=2 && board[6]!=2 && board[7]!=2 && board[8]!=2) ->
	board[_pid-1] = 2;
}
atomic{
	(board[0]!=3 && board[1]!=3 && board[2]!=3 && board[3]!=3 && board[4]!=3 && 
		board[5]!=3 && board[6]!=3 && board[7]!=3 && board[8]!=3) ->
	board[_pid-1] = 3;
}
atomic{
	(board[0]!=4 && board[1]!=4 && board[2]!=4 && board[3]!=4 && board[4]!=4 && 
		board[5]!=4 && board[6]!=4 && board[7]!=4 && board[8]!=4) ->
	board[_pid-1] = 4;
}
atomic{
	(board[0]!=5 && board[1]!=5 && board[2]!=5 && board[3]!=5 && board[4]!=5 && 
		board[5]!=5 && board[6]!=5 && board[7]!=5 && board[8]!=5) ->
	board[_pid-1] = 5;
}
atomic{
	(board[0]!=6 && board[1]!=6 && board[2]!=6 && board[3]!=6 && board[4]!=6 && 
		board[5]!=6 && board[6]!=6 && board[7]!=6 && board[8]!=6) ->
	board[_pid-1] = 6;
}
atomic{
	(board[0]!=7 && board[1]!=7 && board[2]!=7 && board[3]!=7 && board[4]!=7 && 
		board[5]!=7 && board[6]!=7 && board[7]!=7 && board[8]!=7) ->
	board[_pid-1] = 7;
}
atomic{
	(board[0]!=8 && board[1]!=8 && board[2]!=8 && board[3]!=8 && board[4]!=8 && 
		board[5]!=8 && board[6]!=8 && board[7]!=8 && board[8]!=8) ->
	board[_pid-1] = 8;
}
atomic{
	(board[0]!=9 && board[1]!=9 && board[2]!=9 && board[3]!=9 && board[4]!=9 && 
		board[5]!=9 && board[6]!=9 && board[7]!=9 && board[8]!=9) ->
	board[_pid-1] = 9;
}
}
