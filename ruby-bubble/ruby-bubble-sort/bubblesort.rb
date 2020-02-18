def bubble_sort(arr)
  i = arr.length - 1

  arr.each do |_item|
    j = 0
    i.times do
      if arr[j] > arr[j + 1]
        temp = arr[j]
        arr[j] = arr[j + 1]
        arr[j + 1] = temp
        puts 'hello'
      end
      j += 1
      print "#{arr}\n"
    end
    i -= 1
  end
end

bubble_sort([11, 2, 4, 3, 9, 5, 10])
