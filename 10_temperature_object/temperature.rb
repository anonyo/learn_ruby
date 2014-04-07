class Temperature

  def initialize(options)
    @f, @c  = options[:f], options[:c]
  end
  
  def in_celsius
    if @c
      @c
     else
      (@f - 32) * (5.0 / 9.0) 
    end
  end
  
  def in_fahrenheit
    if @f
      @f
     else 
      (@c * 9.0 / 5.0) + 32
     end   
   end
   
      
  def self.from_celsius(cel)
    Temperature.new(:c => cel)
  end

  def self.from_fahrenheit(fah)
    Temperature.new( :f => fah)
  end

end


  class Celsius < Temperature

    def initialize(cel)
      super(:c => cel)
    end

   end

  class Fahrenheit < Temperature

    def initialize(fah)
      super(:f => fah)
     end
   end