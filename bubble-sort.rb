def bubble_sort(array)
  # Take in an unsorted array
  # Return a sorted version using bubble sort
  sorted_array = array.dup
  array_length = array.length
  check_count = 0

  loop do
    has_swapped = false
    check_count += 1
    unsorted_until_index = array_length - 1 - check_count

    0.upto(unsorted_until_index) do |index|
      current_num = sorted_array[index]
      next_num = sorted_array[index + 1]

      if current_num > next_num
        sorted_array[index], sorted_array[index + 1] = next_num, current_num
        has_swapped = true
      end
    end

    return sorted_array if !has_swapped
  end
end