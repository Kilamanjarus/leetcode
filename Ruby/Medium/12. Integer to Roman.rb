# @param {Integer} num
# @return {String}
def int_to_roman(num)
  roman_numerals = {
    1000 => "M",
    900 => "CM",
    500 => "D",
    400 => "CD",
    100 => "C",
    90 => "XC",
    50 => "L",
    40 => "XL",
    10 => "X",
    9 => "IX",
    5 => "V",
    4 => "IV",
    1 => "I",
  }
  roman = ""
  roman_numerals.each do |value, symbol|
    while num >= value
      roman += symbol
      num -= value
    end
  end
  roman
end
