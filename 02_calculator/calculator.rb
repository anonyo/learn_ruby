def add(x, y)
  x + y
end

def subtract(x, y)
  x - y
end

def sum(array)
  if array.length == 0
    0
  else 
  array.inject {|x, y| x + y}
  end
end  

#write tests for these methods

def multiply(array)
  if array.length == 0
    0
  else 
  array.inject {|x, y| x * y}
  end
end  

def power(x, y)
  x ** y
end

def factorial(x)
  return 1 if x.zero?
  1.upto(x).inject(:*)
end


  