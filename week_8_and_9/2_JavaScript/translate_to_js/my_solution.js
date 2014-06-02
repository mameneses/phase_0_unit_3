	// U3.W8-9: Challenge you're converting
	// Create a BoggleBoard Class

	// I worked on this challenge with:
	// 1) Matias
	// 2) Rj

	// 2. Pseudocode
	// Translate BoggleBoard exercise into a class
	// migrate all previous methods into instance methods
	// create new instance method called create_word that will return a string of letters depending on the coordinates given
	// create new instance method called diagonal that will return the "diagonal" set of letters

	// Accept dice_grid as an argument in "initializing" BoggleBoard class
	// Define create_word instance function for BoggleBoard class
	// Define get_row instance function
	// Define get_col instance function
	// *optional* Define get_diagonal

	// 3. Initial Solution
	dice_grid = [["b", "r", "a", "e"],
						   ["i", "o", "d", "t"],
						   ["e", "c", "l", "r"],
						   ["t", "a", "k", "e"]]

	function BoggleBoard (board_arg) {
	//@board = board
			this.board = board_arg;
			this.create_word = function(coords) {
				word = "";
				for (i in coords) {
				 element = coords[i];
				 word += this.board[element[0]][element[1]];
				}
				console.log(word);
			}
			this.get_row = function(row) {
			  letters = []; 
			  for (i in this.board) {
			    letters.push(this.board[i][row])
			  };
			  console.log(letters);
			}
			this.get_col = function(column) {
			   console.log(this.board[column])
			}
			this.get_diagonal = function(coord) {
			   letters= [];
			   x = coord[0]
			   y = coord[1]
			   while( x > 0 && y > 0 ) {
			       x--;
			       y--;
			   }
			   while(x < 3 && y < 3) {
			       letters.push(this.board[x][y]);
			       x++;
			       y++;
			   }
			   console.log(letters)
			}
	}

	//boggle_board = BoggleBoard.new(dice_grid)
	
	var boggle_board = new BoggleBoard(dice_grid);

	// 4. Refactored Solution


	// 1. DRIVER TESTS/ASSERT STATEMENTS GO BELOW THIS LINE
	boggle_board.create_word([[1,2], [1,1], [2,1], [3,2]])// == "dock"
	boggle_board.get_row(0)// == ["b", "r", "a", "e"]
	boggle_board.get_col(0)// == ["b", "i", "e", "t"]
	boggle_board.get_diagonal([0,0])// == ["b", "o", "l", "e"]
	boggle_board.get_diagonal([0,1])// == ["r", "d", "r"]

	// 5. Reflection
