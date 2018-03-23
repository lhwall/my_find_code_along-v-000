require 'pry'

#=begin
def my_find(collection)
i = 0 
while i < collection.length 
if yield(collection[i])
  return collection[i]
end 
i += 1 
end
end

=begin def my_find(collection)
i = 0 
while i < collection.length 
if yield(collection[(collection.length - i)])
  return collection[(collection.length - i)]
end 
binding.pry
i += 1 
end
=end

collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 && i % 5 == 0 }