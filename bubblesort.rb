def bubble_sort(arr)
    i = arr.length-1

    arr.each {
        |item|
        j = 0
        i.times {
            if arr[j]  > arr[j+1]
                temp = arr[j]
                arr[j] = arr[j+1]
                arr[j+1] = temp
                puts "hello"
            end
            j += 1
        }
        i -= 1
    }
    return arr
end

bubble_sort([11,2,4,3,9,5,10])