#Build a method #bubble_sort that takes an array and returns a sorted array. 
#It must use the bubble sort methodology 
#(using #sort would be pretty pointless, wouldn’t it?).
# > bubble_sort([4,3,78,2,0,2])
# => [0,2,2,3,4,78]

def bubble_sort(num_array)
  #If the array only has one element, it's already sorted!
  if(num_array.length < 2)
    return num_array
  end

  index = 0
  max_index = num_array.length - 1
  while index < max_index
    if num_array[index] > num_array[index + 1]
      temp = num_array[index]
      num_array[index] = num_array[index + 1]
      num_array[index + 1 ] = temp     
    end
    index += 1
    if(index == max_index)
      max_index -= 1
      index = 0
    end   
  end
  num_array
end

p bubble_sort([4,3,78,2,0,2])
p bubble_sort([])
p bubble_sort([0])
p bubble_sort([100,0])