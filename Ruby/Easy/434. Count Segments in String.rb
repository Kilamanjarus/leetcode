# @param {String} s
# @return {Integer}
def count_segments(s)
  words = s.split(" ")
  count = 0

  words.each do |word|
    count += 1 unless word.empty?
  end

  count
end
