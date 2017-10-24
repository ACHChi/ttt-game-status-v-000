# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [
  [0,1,2], # Top row
  [3,4,5],  # Middle row
  [6,7,8], # Bottom row
  [0,3,6], # Left
  [1,4,7], # Middle
  [2,5,8], # right
  [0,4,8], # Diag\
  [2,4,6] # Diag/
]

def won?(board)
  WIN_COMBINATIONS.each {|set|
    win_index_1 = set[0]
    win_index_2 = set[1]
    win_index_3 = set[2]

    position_1 = board[win_index_1]
    position_2 = board[win_index_2]
    position_3 = board[win_index_3]

    if position_taken?(board, win_index_1)
      if position_1 == position_2 && position_1 == position_3
        return set
      else
        return false
      end
    else
      return false
    end
  }
end
