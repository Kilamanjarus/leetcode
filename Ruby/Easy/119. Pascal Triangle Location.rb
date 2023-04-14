def get_row(row_index)
  # Initialize the result array with the first element
  result = [1]

  # Generate the row using the previous row
  (1..row_index).each do |i|
    # Calculate the next element in the row using the previous row
    element = result[i - 1] * (row_index - i + 1) / i
    result.push(element)
  end

  return result
end
