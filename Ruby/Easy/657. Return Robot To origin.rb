# @param {String} moves
# @return {Boolean}
def judge_circle(moves)
  horizontal_position = 0
  vertical_position = 0

  moves.each_char do |move|
    case move
    when "R"
      horizontal_position += 1
    when "L"
      horizontal_position -= 1
    when "U"
      vertical_position += 1
    when "D"
      vertical_position -= 1
    end
  end

  horizontal_position == 0 && vertical_position == 0
end
