# @param {Integer[]} prices
# @return {Integer}
def max_profit(prices)
  min_price = prices[0]
  max_profit = 0
  prices.each do |price|
    if price < min_price
      min_price = price
    else
      potential_profit = price - min_price
      if potential_profit > max_profit
        max_profit = potential_profit
      end
    end
  end
  return max_profit
end
