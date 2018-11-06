
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

		row_1_sum = board[0] + board[1];
		row_2_sum = board[2] + board[3];
		col_1_sum = board[0] + board[3];
		col_2_sum = board[1] + board[3];


	}

	atomic{
		board[_pid] = 1;

		row_1_sum = board[0] + board[1];
		row_2_sum = board[2] + board[3];
		col_1_sum = board[0] + board[3];
		col_2_sum = board[1] + board[3];
	}

	atomic{
		board[_pid] = 2;

		row_1_sum = board[0] + board[1];
		row_2_sum = board[2] + board[3];
		col_1_sum = board[0] + board[3];
		col_2_sum = board[1] + board[3];
	}

	atomic{
		board[_pid] = 3;

		row_1_sum = board[0] + board[1];
		row_2_sum = board[2] + board[3];
		col_1_sum = board[0] + board[3];
		col_2_sum = board[1] + board[3];
	}

	atomic{
		board[_pid] = 4;

		row_1_sum = board[0] + board[1];
		row_2_sum = board[2] + board[3];
		col_1_sum = board[0] + board[3];
		col_2_sum = board[1] + board[3];
	}

	atomic{
		board[_pid] = 5;

		row_1_sum = board[0] + board[1];
		row_2_sum = board[2] + board[3];
		col_1_sum = board[0] + board[3];
		col_2_sum = board[1] + board[3];
	}

	atomic{
		board[_pid] = 6;

		row_1_sum = board[0] + board[1];
		row_2_sum = board[2] + board[3];
		col_1_sum = board[0] + board[3];
		col_2_sum = board[1] + board[3];
	}

	atomic{
		board[_pid] = 7;

		row_1_sum = board[0] + board[1];
		row_2_sum = board[2] + board[3];
		col_1_sum = board[0] + board[3];
		col_2_sum = board[1] + board[3];
	}

	atomic{
		board[_pid] = 8;

		row_1_sum = board[0] + board[1];
		row_2_sum = board[2] + board[3];
		col_1_sum = board[0] + board[3];
		col_2_sum = board[1] + board[3];
	}

	atomic{
		board[_pid] = 9;

		row_1_sum = board[0] + board[1];
		row_2_sum = board[2] + board[3];
		col_1_sum = board[0] + board[3];
		col_2_sum = board[1] + board[3];
	}
	
	atomic{
		board[_pid] = 10;

		row_1_sum = board[0] + board[1];
		row_2_sum = board[2] + board[3];
		col_1_sum = board[0] + board[3];
		col_2_sum = board[1] + board[3];
	}
	
}
