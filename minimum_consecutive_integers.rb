module MinimumConsecutiveIntegers
  # Assuming each integer is unique.

  def minimum_consecutive_integers_uniq(array)
    1 + array.max - array.min - array.length
  end

  # Without that assumption

  def minimum_consecutive_integers(array)
    unique_array = array.uniq
    1 + unique_array.max - unique_array.min - unique_array.length
  end
end
