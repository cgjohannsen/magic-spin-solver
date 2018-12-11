/* Board Representation: */ 
/* [0] [1] [2]			 */
/* [3] [4] [5] 			 */
/* [6] [7] [8] 			 */

typedef filled_boards {
	int board[9];
};

show int output[9];

show int spaces_filled;
show int difficulty;
show int seed;
filled_boards solution[8];

init {
	/* Board 1: {8,1,6,3,5,7,4,9,2} */
	solution[0].board[0] = 8;
	solution[0].board[1] = 1;
	solution[0].board[2] = 6;
	solution[0].board[3] = 3;
	solution[0].board[4] = 5;
	solution[0].board[5] = 7;
	solution[0].board[6] = 4;
	solution[0].board[7] = 9;
	solution[0].board[8] = 2;

	/* Board 2: {6,1,8,7,5,3,2,9,4} */
	solution[1].board[0] = 6;
	solution[1].board[1] = 1;
	solution[1].board[2] = 8;
	solution[1].board[3] = 7;
	solution[1].board[4] = 5;
	solution[1].board[5] = 3;
	solution[1].board[6] = 2;
	solution[1].board[7] = 9;
	solution[1].board[8] = 4;

	/* Board 3: {4,9,2,3,5,7,8,1,6} */
	solution[2].board[0] = 4;
	solution[2].board[1] = 9;
	solution[2].board[2] = 2;
	solution[2].board[3] = 3;
	solution[2].board[4] = 5;
	solution[2].board[5] = 7;
	solution[2].board[6] = 8;
	solution[2].board[7] = 1;
	solution[2].board[8] = 6;

	/* Board 4: {2,9,4,7,5,3,6,1,8} */
	solution[3].board[0] = 2;
	solution[3].board[1] = 9;
	solution[3].board[2] = 4;
	solution[3].board[3] = 7;
	solution[3].board[4] = 5;
	solution[3].board[5] = 3;
	solution[3].board[6] = 6;
	solution[3].board[7] = 1;
	solution[3].board[8] = 8;

	/* Board 5: {8,3,4,1,5,9,6,7,2} */
	solution[4].board[0] = 8;
	solution[4].board[1] = 3;
	solution[4].board[2] = 4;
	solution[4].board[3] = 1;
	solution[4].board[4] = 5;
	solution[4].board[5] = 9;
	solution[4].board[6] = 6;
	solution[4].board[7] = 7;
	solution[4].board[8] = 2;

	/* Board 6: {4,3,8,9,5,1,2,7,6} */
	solution[5].board[0] = 4;
	solution[5].board[1] = 3;
	solution[5].board[2] = 8;
	solution[5].board[3] = 9;
	solution[5].board[4] = 5;
	solution[5].board[5] = 1;
	solution[5].board[6] = 2;
	solution[5].board[7] = 7;
	solution[5].board[8] = 6;

	/* Board 7: {6,7,2,1,5,9,8,3,4} */
	solution[6].board[0] = 6;
	solution[6].board[1] = 7;
	solution[6].board[2] = 2;
	solution[6].board[3] = 1;
	solution[6].board[4] = 5;
	solution[6].board[5] = 9;
	solution[6].board[6] = 8;
	solution[6].board[7] = 3;
	solution[6].board[8] = 4;

	/* Board 8: {2,7,6,9,5,1,4,3,8} */
	solution[7].board[0] = 2;
	solution[7].board[1] = 7;
	solution[7].board[2] = 7;
	solution[7].board[3] = 9;
	solution[7].board[4] = 5;
	solution[7].board[5] = 1;
	solution[7].board[6] = 4;
	solution[7].board[7] = 3;
	solution[7].board[8] = 8;

	run generate();
}

proctype generate() {
	int i, j, k, h;

	select(seed : 0 .. 7)

	/* ----------------------------------------------- */
	/* Iterate thru unique boards with 2 spaces filled */
	/* ----------------------------------------------- */

	/* ------------------------------------- */
	/* Boards which are 2 corners or 2 edges */
	/* ------------------------------------- */

	difficulty = 9;
	atomic{ 
		for(h : 0 .. 8){ output[h] = 0; }
		output[0] = solution[seed].board[0];
		output[2] = solution[seed].board[2];
		spaces_filled = 2;
	}
	atomic{ 
		for(h : 0 .. 8){ output[h] = 0; }
		output[0] = solution[seed].board[0];
		output[6] = solution[seed].board[6];
		spaces_filled = 2;
	}
	atomic{ 
		for(h : 0 .. 8){ output[h] = 0; }
		output[1] = solution[seed].board[1];
		output[3] = solution[seed].board[3];
		spaces_filled = 2;
	}
	atomic{ 
		for(h : 0 .. 8){ output[h] = 0; }
		output[1] = solution[seed].board[1];
		output[5] = solution[seed].board[5];
		spaces_filled = 2;
	}
	atomic{ 
		for(h : 0 .. 8){ output[h] = 0; }
		output[2] = solution[seed].board[2];
		output[8] = solution[seed].board[8];
		spaces_filled = 2;
	}
	atomic{ 
		for(h : 0 .. 8){ output[h] = 0; }
		output[3] = solution[seed].board[3];
		output[7] = solution[seed].board[7];
		spaces_filled = 2;
	}
	atomic{ 
		for(h : 0 .. 8){ output[h] = 0; }
		output[5] = solution[seed].board[5];
		output[7] = solution[seed].board[7];
		spaces_filled = 2;
	}
	atomic{ 
		for(h : 0 .. 8){ output[h] = 0; }
		output[6] = solution[seed].board[6];
		output[8] = solution[seed].board[8];
		spaces_filled = 2;
	}

	/* ------------------------------------ */
	/* Boards which are a corner edge combo */
	/* ------------------------------------ */

	difficulty = 8;
	for(i : 0 .. 1) {
		int index1 = 2*i;
		for(j : 0 .. 3) {
			int index2 = 2*j + 1;
			atomic{ 
				for(h : 0 .. 8){ output[h] = 0; }
				output[index1] = solution[seed].board[index1];
				output[index2] = solution[seed].board[index2];
				spaces_filled = 2;
			}
		}
	}
	for(i : 3 .. 4) {
		int index1 = 2*i;
		for(j : 0 .. 3) {
			int index2 = 2*j + 1;
			atomic{ 
				for(h : 0 .. 8){ output[h] = 0; }
				output[index1] = solution[seed].board[index1];
				output[index2] = solution[seed].board[index2];
				spaces_filled = 2;
			}
		}
	}

	/* ------------------------------------------ */
	/* Iterate thru boards with 3-8 spaces filled */
	/* ------------------------------------------ */

	for(k : 3 .. 8) {
		difficulty = 10 - k;
		
		int size = 8;
		int indices_available[8];
		indices_available[0] = 0;
		indices_available[1] = 1;
		indices_available[2] = 2;
		indices_available[3] = 3;
		indices_available[4] = 5;
		indices_available[5] = 6;
		indices_available[6] = 7;
		indices_available[7] = 8;

		for(h : 0 .. 8){ output[h] = 0; }

		atomic{
			select(j : 0 .. (size-1))
			output[j] = solution[seed].board[j];
			for(h : j .. (size-2)){
				indices_available[h] = indices_available[h+1];
			}
			size = size - 1;
			select(j : 0 .. (size-1))
			output[j] = solution[seed].board[j];
			for(h : j .. (size-2)){
				indices_available[h] = indices_available[h+1];
			}
			size = size - 1;
			select(j : 0 .. (size-1))
			output[j] = solution[seed].board[j];	
			for(h : j .. (size-2)){
				indices_available[h] = indices_available[h+1];
			}
			size = size - 1;
			spaces_filled = 3;
		}
		
		for(i : 0 .. (k-3)){
			select(j : 0 .. (size-1))
			atomic{
				output[j] = solution[seed].board[j];
				for(h : j .. (size-2)){
					indices_available[h] = indices_available[h+1];
				}
				size = size - 1;
			}
			spaces_filled = spaces_filled + i + 1;
		}
	}

	/* ---------------------------- */
	/* Allow for solving of puzzles */
	/* ---------------------------- */

	atomic{
		for(i : 0 .. 8){ output[i] = solution[seed].board[i]; }
		spaces_filled = 9;
	}

}