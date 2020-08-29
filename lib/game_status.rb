# Helper Method
def position_taken?(board, index)
  !(board[index].nil? || board[index] == " ")
end

# Define your WIN_COMBINATIONS constant
WIN_COMBINATIONS = [ 
  [0,1,2],
  [3,4,5],
  [6,7,8],
  [0,3,6],
  [1,4,7],
  [2,5,8],
  [0,4,8],
  [6,4,2]
  ]
  
  #define won argument
  
  def won?(board)
    WIN_COMBINATIONS.each { |win_combo|
     index_0 = win_combinations[0]
    index_1 = win_combinations[1]
    index_2 = win_combinations[2]
    
    position_1 = board[index_0]
    position_2 = board[index_1]
    position_3 = board[index_2]
    
    if position_1 == "X" && position_2 == "X" && position_3 == "X"
      return win_combo
    elseif position_1 == "O" && position_2 == "O" && position_3 == "O"
      return win_combo
    end
    }
    return false 
  end
  
  #def full method 
  
  def full?(board)
    board.all {|index| index == "X" || index == "O"}
  end
  
  #def draw board
  
  def draw?(board)
    if !won?(board) && full?(board)
      return true 
    else 
      return false
    end
  end
  
  #def over? method
  
  def over?(board)
    if won?(board) || full?(board) || draw?(board)
      return true
    else
      return false 
    end
  end
  
  #def winner
  
  def winner (board)
    index = []
    index = won?(board)
    if index == false 
      return "O"
    else
      if board[index[0]] == "X"
        return nil
      else 
        return "O"
      end
    end
  end
    