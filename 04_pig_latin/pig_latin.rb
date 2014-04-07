def convert(str)
  
  x1 = str[0, 1]
  x2 = str[1, 1]
  x3 = str[2, 1]
  
  alpha = ('a'..'z').to_a
  vowels = %w[a e i o u]
  consonants = alpha - vowels
  
  if vowels.include?(x1)
    str + 'ay'
  elsif x1 == "s" && x2 == "c" && x3 == "h" || x2 == "q" && x3 == "u" 
    str[3..-1] + str[0..2] + "ay" 
  elsif consonants.include?(x1) && consonants.include?(x2) && consonants.include?(x3) 
    str[-2..-1] + str[0..2] + "ay" 
  elsif consonants.include?(x1) && consonants.include?(x2) || x1 == "q" && x2 =="u"
    str[2..-1] + str[0..1] + 'ay'
  elsif consonants.include?(x1) 
    str[1..-1] + x1 + 'ay'
  else
    str
  end
  
end

def translate(str)

str.split.map { |word| convert(word) }.join(" ")

end