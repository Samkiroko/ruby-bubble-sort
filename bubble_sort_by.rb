# creating bubble sort that accept a block

def bubble_sort_by(arr)
  arr.each do |_left|
    i = 0
    swap = 0

    while i < arr.length - 1
      yield_ = block_given? ? yield(arr[i], arr[i + 1]) : yield_ = arr[i] > arr[i + 1]
      # yield_ = arr[i] > arr[i + 1]
      if yield_&.positive?
        temp = arr[i]
        arr[i] = arr[i + 1]
        arr[i + 1] = temp
      end
      i += 1
      swap += 1
    end
    break if swap.zero?
  end
  arr
end

print bubble_sort_by(%w[howww hello hey hoooow hhhheyyyy world]) { |left, right| left.length - right.length }
