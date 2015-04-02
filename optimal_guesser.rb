# return true if a number exists in a sorted array of numbers, false otherwise, using the minimum number of guesses
def guesser(haystack, needle)
  min = 0
  max = haystack.length - 1
  loop do
    guess = (min + max) / 2
    if haystack[guess] == needle
      return true
    elsif min >= max
      return false
    elsif haystack[guess] > needle
      max = guess - 1
    else
      min = guess + 1
    end
  end
end
