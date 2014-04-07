class Array
 
  def sum
    if self.empty?
        0
      else
        self.inject(:+) 
      end
  end
  
  def square
    if self.empty?
        []
      else
        new = []
        self.map {|x| new << x * x}
        new
      end
  end
    
    def square!
      self.map! {|x| x * x}
  end
    
end