# @param {Integer[]} score
# @return {String[]}
def find_relative_ranks(score)
  sorted_score = score.sort.reverse
  rank_map = {}
  sorted_score.each_with_index do |s, index|
    rank = index + 1
    if rank == 1
      rank_map[s] = "Gold Medal"
    elsif rank == 2
      rank_map[s] = "Silver Medal"
    elsif rank == 3
      rank_map[s] = "Bronze Medal"
    else
      rank_map[s] = rank.to_s
    end
  end
  score.map { |s| rank_map[s] }
end
