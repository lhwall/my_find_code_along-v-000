require 'pry'

=begin
def my_find(collection)
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
current_location = (collection.length - i - 1).to_i
if yield(collection[current_location])
  return collection[current_location]
end 

i += 1 
end
end

collection = (1..100).to_a
my_find(collection) {|i| i % 3 == 0 && i % 5 == 0 }