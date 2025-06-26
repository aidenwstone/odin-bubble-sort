def bubble_sort(array)
  # Take in an unsorted array
  # Return a sorted version using bubble sort
  sorted_array = array
  is_sorted = false
  check_count = 0

  until is_sorted do
    has_swapped = false

    sorted_array.each_index do |index|
      break if index + 1 == sorted_array.length - check_count

      current_num = sorted_array[index]
      next_num = sorted_array[index + 1]

      if current_num > next_num
        sorted_array[index] = next_num
        sorted_array[index + 1] = current_num
        has_swapped = true
      end
    end

    check_count += 1
    is_sorted = true if !has_swapped
  end

  sorted_array
end