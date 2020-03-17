# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant

WIN_COMBINATIONS = [
  [0,1,2], # Top Row
  [3,4,5], # Middle Row
  [6,7,8], # Bottom Row
  [0,3,6], # Left Column
  [1,4,7], # Middle Column
  [2,5,8], # Right Column
  [0,4,8], # Top-Left-Bottom-Right Diagnoal
  [2,4,6] # Top-Right-Bottom-Left Diagnoal
]

def won?(board)
  WIN_COMBINATIONS.detect do |combo|
      position_taken?(board, combo[0]) && board[combo[0]] == board[combo[1]] && board[combo[1]] == board[combo[2]]
  end
end

def full?(board)
  board.none? do |player|
    player != "X" && player != "O"
  end
end

def draw?(board)
  full?(board) ? true : false
end
