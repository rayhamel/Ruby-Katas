module Palindrome
  # Determine if a string is a palindrome, case-insensitive and ignoring whitespace.
  def palindrome?(string)
    string.gsub(/\s+/, '').downcase == string.gsub(/\s+/, '').downcase.reverse
  end
end
