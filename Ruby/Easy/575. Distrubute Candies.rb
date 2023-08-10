# @param {Integer[]} candy_type
# @return {Integer}
def distribute_candies(candy_type)
  max_unique_candies = candy_type.uniq.length
  max_eaten_candies = candy_type.length / 2
  [max_unique_candies, max_eaten_candies].min
end
