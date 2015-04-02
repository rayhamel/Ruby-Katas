# Works with ASCII or any version of Unicode/UTF-8 (default character encoding in Ruby)
def caesar_cipher(str, number)
  number %= 26
  ciphered_string = ''
  str.each_codepoint do |pnt|
    if pnt < 91 && (pnt + number) > 90 or pnt < 123 && (pnt + number) > 122
      ciphered_string.concat(pnt + number - 26)
    elsif pnt > 64 && pnt < 91 or pnt > 96 && pnt < 123
      ciphered_string.concat(pnt + number)
    else
      ciphered_string.concat(pnt)
    end
  end
  ciphered_string
end
