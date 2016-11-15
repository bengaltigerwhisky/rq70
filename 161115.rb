ita = [1,2,3,4,5,6,7,8,9]

board = [[1,2],[2,3],[7,8],[8,9],
[1,4],[3,6],[4,7],[6,9]]

1.upto(9){|i|
  board.push([i])
}

@memo = {[] => 1}
def strike(board)
  return @memo[board] if @memo.has_key?(board)
  cnt = 0
  board.each{|b|
  next_board = board.select{|i| (b & i).size == 0}
  cnt += strike(next_board)
  }
  @memo[board] = cnt
end

puts strike(board)

