# The number of duplicate elements in an array.
def duplicate_counter(array)
  array.length - array.uniq.length
end
