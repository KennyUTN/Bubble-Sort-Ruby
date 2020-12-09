def bubble_sort(array)
  swap = true
  while swap
    swap = false
    index = 0

    (array.size - 1).times do |index|
      if array[index] > array[index + 1]
        array[index], array[index + 1] = array[index + 1], array[index]
        swap = true
      end
      index += 1
    end
  end

  p array
end

bubble_sort([3, 4, 5, 2, 1])

def bubble_sort_by(array)
  swap = true
  if array.size >= 1
    while swap == true
      swap = false
      (array.size - 1).times do |i|
        comparator = yield array[i], array[i + 1]
        if comparator == true
          array[i], array[i + 1] = array[i + 1], array[i]
          swap = true
        end
      end
    end
    print array
end
end

bubble_sort_by(%w[hey kenny test world hi]) do |left, right|
  (left.length - right.length).positive?
end
