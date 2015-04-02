# Works with ASCII or any version of Unicode/UTF-8 (default character encoding in Ruby)
def caesar_cipher(string, number)
  number %= 26
  ciphered_string = ''
  string.each_codepoint do |codepoint|
    if codepoint <= 90 && (codepoint + number) > 90
      ciphered_string.concat(codepoint + number - 26)
    elsif codepoint <= 122 && (codepoint + number) > 122
      ciphered_string.concat(codepoint + number - 26)
    elsif codepoint > 64 && codepoint < 91 or codepoint > 96 && codepoint < 123
      ciphered_string.concat(codepoint + number)
    else
      ciphered_string.concat(codepoint)
    end
  end
  ciphered_string
end
