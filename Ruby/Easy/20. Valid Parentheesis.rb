def is_valid(s)
  string_array = s.split("")
  i = 0
  opened = []
  output = false
  if string_array.count > 1
    output = true
  end
  while i < string_array.count
    if string_array[i] == "(" && string_array[i + 1] != "]" && string_array[i + 1] != "}"
      opened << string_array[i]
    elsif string_array[i] == "{" && string_array[i + 1] != "]" && string_array[i + 1] != ")"
      opened << string_array[i]
    elsif string_array[i] == "[" && string_array[i + 1] != ")" && string_array[i + 1] != "}"
      opened << string_array[i]
    elsif string_array[i] == ")"
      if opened.last() == "("
        opened.delete_at(opened.length - 1)
      else
        output = false
      end
    elsif string_array[i] == "]"
      if opened.last() == "["
        opened.delete_at(opened.length - 1)
      else
        output = false
      end
    elsif string_array[i] == "}"
      if opened.last() == "{"
        opened.delete_at(opened.length - 1)
      else
        output = false
      end
    else
      output = false
    end
    i += 1
  end
  if opened.length > 0
    output = false
  end
  return output
end

p is_valid("{[]}")
