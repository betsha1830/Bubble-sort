def bubble_sort(unorder_list)
  temp = 0
  unorder_list.each_index do |index|
    next unless unorder_list[index + 1] != nil

    next unless unorder_list[index] > unorder_list[index + 1]

    temp = unorder_list[index]
    unorder_list[index] = unorder_list[index + 1]
    unorder_list[index + 1] = temp
  end

  # To check if the array is at its final ordered state

  not_ordered = false

  unorder_list.each_index do |index|
    next unless unorder_list[index + 1] != nil

    not_ordered = true if unorder_list[index] > unorder_list[index + 1]
  end

  not_ordered ? bubble_sort(unorder_list) : unorder_list
end