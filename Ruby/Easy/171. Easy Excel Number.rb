def title_to_number(column_title)
  column_number = 0
  base = 26

  column_title.reverse.each_char.with_index do |char, index|
    value = char.ord - "A".ord + 1
    column_number += value * (base ** index)
  end

  column_number
end
