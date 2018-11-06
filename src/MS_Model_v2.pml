
#define row1 target_sum==(board[0]+board[1])
#define row2 target_sum==(board[2]+board[3])
#define col1 target_sum==(board[0]+board[2])
#define col2 target_sum==(board[1]+board[3])

show int target_sum = 10;
show int board[4];

show int row_1_sum;
show int row_2_sum;
show int col_1_sum;
show int col_2_sum;

active[4] proctype fill_board()
{
	atomic{
		board[_pid] = 0;
	}

	atomic{
		board[_pid] = 1;
	}

	atomic{
		board[_pid] = 2;
	}

	atomic{
		board[_pid] = 3;
	}

	atomic{
		board[_pid] = 4;
	}

	atomic{
		board[_pid] = 5;
	}

	atomic{
		board[_pid] = 6;
	}

	atomic{
		board[_pid] = 7;
	}

	atomic{
		board[_pid] = 8;

	}

	atomic{
		board[_pid] = 9;
	}
	
	atomic{
		board[_pid] = 10;
	}
	
}
