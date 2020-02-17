# creating bubble sort that accept a block

def bubble_sort_by(array)
  n = array.length - 1
  (array.length - 1).times do
    switched = false
    n.times do |i|
      if yield(array[i], array[i + 1]).positive?
        array[i], array[i + 1] = array[i + 1], array[i]
        switched = true
      end
    end
    break unless switched

    n -= 1
  end
  [array, array.length - n]
end

print bubble_sort_by(%w[howww hello hey hoooow]) { |left, right| left.length - right.length }
