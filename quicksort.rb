def quicksort(arr)
    quicksorthelper(arr, 0, arr.length-1)
    return arr
end

def quicksorthelper(arr, first, last)
    if first<last
        splitpoint = partition(arr, first,  last)
        quicksorthelper(arr, first, splitpoint-1)
        quicksorthelper(arr, splitpoint+1, last)
    end
end

def partition(arr, first, last)
    pivot = arr[first]
    leftmark = first+1
    rightmark = last

    done = false
    while not done do
        while leftmark <= rightmark and arr[leftmark] <= pivot do
            leftmark += 1
        end

        while rightmark >= leftmark and arr[rightmark] >= pivot do
            rightmark -= 1
        end
        if rightmark < leftmark
            done = true
        else
            temp = arr[leftmark]
            arr[leftmark] = arr[rightmark]
            arr[rightmark] = temp
        end
    end
    temp = arr[first]
    arr[first] = arr[rightmark]
    arr[rightmark] = temp

    return rightmark
end

puts(quicksort([54,26,93,17,77,31,44,55,20]))

