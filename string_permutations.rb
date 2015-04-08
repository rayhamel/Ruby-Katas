# Determine if one string is a permutation of another.
def permutation?(str1, str2)
  str1.chars.sort == str2.chars.sort
end
