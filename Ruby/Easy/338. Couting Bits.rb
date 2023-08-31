# @param {Integer} n
# @return {Integer[]}
def count_bits(n)
  result = [0] # The number of '1's in the binary representation of 0 is 0

  (1..n).each do |i|
    result << result[i >> 1] + (i & 1)
  end

  result
end
