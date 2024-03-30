import 'dart:io';

void main() {
  print('Welcome to Tic Tac Toe!\n');

  // Create a 3x3 game board
  List<List<String>> board = [
    ['-', '-', '-'],
    ['-', '-', '-'],
    ['-', '-', '-']
  ];

  // Player 1 is 'X' and Player 2 is 'O'
  String currentPlayer = 'X';

  // Main game loop
  while (true) {
    // Display the current state of the board
    printBoard(board);

    // Prompt the current player to make a move
    print('\nPlayer $currentPlayer\'s turn. Enter row (0-2) and column (0-2) separated by space:');

    // Get the player's move
    String? move = stdin.readLineSync();

    // Validate and process the move
    if (move != null && move.isNotEmpty) {
      List<String> coordinates = move.split(' ');

      if (coordinates.length == 2) {
        int row = int.tryParse(coordinates[0]) ?? -1;
        int col = int.tryParse(coordinates[1]) ?? -1;

        // Check if the move is within the board boundaries and the cell is empty
        if (row >= 0 && row < 3 && col >= 0 && col < 3 && board[row][col] == '-') {
          // Make the move
          board[row][col] = currentPlayer;

          // Check if the current player has won
          if (checkWin(board, row, col)) {
            // Display the final state of the board
            printBoard(board);
            print('\nPlayer $currentPlayer wins!');
            break; // End the game
          }

          // Check if the board is full (tie)
          if (checkTie(board)) {
            // Display the final state of the board
            printBoard(board);
            print('\nIt\'s a tie!');
            break; // End the game
          }

          // Switch to the next player
          currentPlayer = (currentPlayer == 'X') ? 'O' : 'X';
        } else {
          print('Invalid move. Please enter row and column within range (0-2) and in the format: row column.');
        }
      } else {
        print('Invalid input format. Please enter row and column separated by space.');
      }
    }
  }
}

// Function to display the current state of the board
void printBoard(List<List<String>> board) {
  print('\nCurrent Board:');
  for (List<String> row in board) {
    print(row.join(' '));
  }
}

// Function to check if the current player has won
bool checkWin(List<List<String>> board, int row, int col) {
  // Check row
  if (board[row][0] == board[row][1] && board[row][1] == board[row][2]) {
    return true;
  }
  // Check column
  if (board[0][col] == board[1][col] && board[1][col] == board[2][col]) {
    return true;
  }
  // Check diagonals
  if ((board[0][0] == board[1][1] && board[1][1] == board[2][2]) ||
      (board[0][2] == board[1][1] && board[1][1] == board[2][0])) {
    return true;
  }
  return false;
}

// Function to check if the board is full (tie)
bool checkTie(List<List<String>> board) {
  for (List<String> row in board) {
    for (String cell in row) {
      if (cell == '-') {
        return false; // Board is not full
      }
    }
  }
  return true; // Board is full
}
