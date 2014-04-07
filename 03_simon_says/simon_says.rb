def echo(greeting)
  greeting
end

def shout(greeting)
  greeting.upcase
end

def repeat(greeting, n=2)
  n.times.collect { greeting }.join (" ")
end

def start_of_word(greeting, n)
  greeting.each_line {|x| return x[0..(n -= 1)]}
end

def first_word(greeting)
  return (greeting.split(" "))[0]
end

#def titleize(greeting)
 # greeting.split(" ").map(&:capitalize).join(" ") 
  #end

def titleize(greeting)
  little_words = %w{and over the}
  greeting.split.each_with_index.map{|x, index| little_words.include?(x) && index > 0 ? x : x.capitalize }.join(" ")
end


  






  


  
  