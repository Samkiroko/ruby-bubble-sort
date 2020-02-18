def bubble_sort(arr)
  i = arr.length - 1

  arr.each do |_item|
    j = 0
    i.times do
      if arr[j] > arr[j + 1]
        temp = arr[j]
        arr[j] = arr[j + 1]
        arr[j + 1] = temp
      end
      j += 1
    end
    i -= 1
  end
  arr
end

print bubble_sort [5, 7, 9, 4, 1, 3, 5, 6, 8]
