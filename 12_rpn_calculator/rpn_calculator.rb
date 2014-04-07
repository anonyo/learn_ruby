class RPNCalculator
  attr_accessor :calculator
  
  def initialize
    @calculator = []
  end
  
  def push(x)
    @calculator << x
  end
  
    def value
    @calculator.last
  end

  def plus
    if @calculator.size >= 2
    sum  = @calculator.pop + @calculator.pop
    @calculator << sum
    else
      raise "calculator is empty"
    end
  end
  
  def minus
    if @calculator.size >= 2
      second = @calculator.pop
      first = @calculator.pop
      minus  =  first - second
      @calculator << minus
    else
      raise "calculator is empty"
    end
  end
  
   def divide
    if @calculator.size >= 2
      second = @calculator.pop.to_f
      first = @calculator.pop.to_f
      division  =  first / second
      @calculator << division
    else
      raise "calculator is empty"
    end
  end
  
    def times
    if @calculator.size >= 2
      second = @calculator.pop.to_f
      first = @calculator.pop.to_f
      multiply  =  first * second
      @calculator << multiply
    else
      raise "calculator is empty"
    end
  end
  
  def tokens(array)
    new = array.split(" ")
    new.collect do |x| 
      if ( x == "+" || x == "-" || x == "*" || x == "/")
        x.to_sym
      else
        x.to_i
      end
    end
end

  
  end