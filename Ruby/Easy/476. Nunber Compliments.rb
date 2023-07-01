# @param {Integer} num
# @return {Integer}
def find_complement(num)
  num_bits = Math.log2(num).to_i + 1
  bitmask = (1 << num_bits) - 1
  num ^ bitmask
end
