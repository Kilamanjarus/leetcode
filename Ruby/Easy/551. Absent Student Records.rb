# @param {String} s
# @return {Boolean}

def check_record(s)
  absent_count = 0
  late_count = 0
  s.each_char do |char|
    if char == "A"
      absent_count += 1
      late_count = 0
    elsif char == "L"
      late_count += 1
    else
      late_count = 0
    end
    return false if absent_count >= 2 || late_count >= 3
  end
  true
end
