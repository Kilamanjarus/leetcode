# @param {Integer} area
# @return {Integer[]}
def construct_rectangle(area)
  width = Math.sqrt(area).to_i
  while area % width != 0
    width -= 1
  end
  length = area / width
  [length, width]
end
