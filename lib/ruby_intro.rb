# When done, submit this entire file to the autograder.

# Part 1

def sum arr
  # YOUR CODE HERE
  sum =0
  arr.each do |x|
    sum+=x
  end 
  return sum
end

def max_2_sum arr
  # YOUR CODE HERE
  
  sum=0
  arr.sort!
  arr.reverse!
  arr.first(2).each do |x| 
    sum+=x 
  end
  return sum
end

def sum_to_n? arr, n
  # YOUR CODE HERE
  arr1=[]
 arr.combination(2).to_a.each do |a|
     
     a.inject do |x,y|
         
         arr1.push( x+y)
        
       
     end
         
     
 end
 
 if arr1 .include?n
     return true
 else
     return false
 end 
 
end

# Part 2

def hello(name)
  # YOUR CODE HERE
  return "Hello, "+name
end

def starts_with_consonant? s
  # YOUR CODE HERE
  /\A(?=[^aeiou])(?=[a-z])/i.match(s)!=nil
end

def binary_multiple_of_4? s
  # YOUR CODE HERE
  if s.match(/^[10]*00$/)||s=="0"
    
    return true
  else
    return false
  end
end

# Part 3

class BookInStock
# YOUR CODE HERE
   def initialize (isbn,price)
     if price <=0 || isbn =="" 
       
         raise(ArgumentError,"you have error")
     else
       @isbn=isbn
        @price=price
     end
    
        
   end
   
   def isbn=(isbn)
     @isbn=isbn
   end
   
   def isbn 
     @isbn
   end
   
   def price=(price)
     @price=price
   end
   
   def price
     @price
   end
   
   def price_as_string
     return "$#{'%.02f' % @price}"
     
   end
   
   
end




puts sum_to_n? [2,4,8,6], 12

puts starts_with_consonant? "version"