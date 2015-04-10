# The number of duplicate elements in an array.
module DuplicateElementCounter
  def duplicate_counter(array)
    array.length - array.uniq.length
  end
end
