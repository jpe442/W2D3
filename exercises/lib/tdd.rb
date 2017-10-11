def my_uniq(array)
  uniqued = []
  array.each do |el|
    uniqued << el unless uniqued.include?(el)
  end
  uniqued
end

def two_sum(arr)
  sums = []
  arr.each_index do |idx|
    arr.each_index do |idx2|
      next if idx2 <= idx
        sums << [idx, idx2] if arr[idx] + arr[idx2] ==0
    end
  end
  sums
end

def my_transpose(matrix)
  transposed = []
  matrix.each_index do |i|
    nested = []
    matrix.each_index do |j|
      nested << matrix[j][i]
    end
    transposed << nested
  end
  transposed
end

def stock_picker(arr)
  most_profit = 0
  most_profitable = []

  arr.each_with_index do |price1, buy|
    arr.each_with_index do |price2, sell|
      next if sell <= buy
      if most_profit <= price2 - price1
        most_profit = price2 - price1
        most_profitable = [buy, sell]
      end
    end
  end
  # select largest buy_sell[].fist
  most_profitable
end

class Towers

  attr_reader :pegs

  def initialize
    @pegs = [[3,2,1], [], []]
  end

  def move_piece(from_peg, to_peg)
    raise "invalid move" if pegs[from_peg].empty?

    unless pegs[to_peg].empty?
      raise "invalid move" if pegs[to_peg].last < pegs[from_peg].last
    end

    @pegs[to_peg] << pegs[from_peg].pop

     pegs
  end

end
