# code your #valid_move? method here
def valid_move?(board,index)
  position.to_i.between?(1,9) and not position_taken?(board, index.to_i - 1)
end

# re-define your #position_taken? method here, so that you can use it in the #valid_move? method above.
def position_taken?(board,index)
  return false if [" ", "", nil].include?(board[index])
  return true if ["X", "O"].include?(board[index])
  raise "#{board[index]} is not a valid move"
end
