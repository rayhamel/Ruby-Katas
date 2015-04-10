def minimum_coins(number)
  minimum = 0
  [100, 50, 25, 10, 5, 1].each do |denom|
    return minimum if number == 0
    minimum += number / denom
    number %= denom
  end
  minimum
end
