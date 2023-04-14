# @param {Integer} num_rows
# @return {Integer[][]}
def generate(num_rows)
  triangle = []
  num_rows.times do |i|
    row = []
    (i + 1).times do |j|
      if j == 0 || j == i
        row.push(1)
      else
        prev_row = triangle[i - 1]
        val = prev_row[j - 1] + prev_row[j]
        row.push(val)
      end
    end
    triangle.push(row)
  end
  return triangle
end
