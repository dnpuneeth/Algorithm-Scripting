def merge(l, r)
    tmp = []
    lhead = 0
    rhead = 0
    ltail = l.length
    rtail = r.length
    while lhead < ltail and rhead < rtail
        if l[lhead] < r[rhead]
            tmp.push(l[lhead])
            lhead += 1
        else
            tmp.push(r[rhead])
            rhead += 1
        end
    end
    while lhead < ltail
        tmp.push(l[lhead])
        lhead += 1
    end
    while rhead < rtail
        tmp.push(r[rhead])
        rhead += 1
    end
    return tmp
end

def mergesort(arr)
    return arr unless arr.size > 1
    mid = ((arr.length)/2).to_i
    left = arr.slice(0,mid)
    right = arr.slice(mid,(arr.length-mid))
    return merge mergesort(left), mergesort(right)
end

puts(mergesort([2, 5, 6, 8, 1]))
