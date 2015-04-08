# Determine if every character in a string is unique, without using any other type of data structure.
def unique?(str, start_index = 0)
  string_length = str.length
  return true if start_index == string_length - 1
  string_length.times do |n|
    return false if str[start_index] == str[start_index + n + 1]
  end
  unique?(str, start_index + 1)
end
