# @param {Character[][]} board
# @return {Boolean}
def is_valid_sudoku(board)
  9.times do |i|
    return false unless is_valid_unit(board[i])
  end
  9.times do |j|
    column = (0...9).map { |i| board[i][j] }
    return false unless is_valid_unit(column)
  end
  3.times do |row|
    3.times do |col|
      sub_box = []
      3.times do |i|
        3.times do |j|
          sub_box << board[row * 3 + i][col * 3 + j]
        end
      end
      return false unless is_valid_unit(sub_box)
    end
  end
  true
end

def is_valid_unit(unit)
  digits = unit.select { |ch| ch != "." }
  digits.uniq.length == digits.length
end
