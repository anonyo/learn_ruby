class Book
  
  def title
    @title
  end
  
  def title=(title)
    stop_words = %w( and a an in the of )
    @title = title.capitalize.split.map { |word| stop_words.include?(word) ? word : word.capitalize  }.join(" ") 
    #took me a while to figure out how to capitalize "the" when index[0]   
  end  
  
  
end