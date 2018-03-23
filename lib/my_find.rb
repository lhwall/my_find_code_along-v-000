require 'pry'

=begin def my_find(collection)
i = 0 
while i < collection.length 
if yield(collection[i])
  return collection[i]
end 
i += 1 
end
=end

def my_find(collection)
i = 0 
while i < collection.length 
if yield(collection[(collection.length - i)])
  return collection[(collection.length - i)]
end 
binding.pry
i += 1 
end
end

