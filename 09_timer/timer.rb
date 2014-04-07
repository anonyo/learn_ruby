class Timer
  attr_accessor :seconds

  def initialize
    @seconds = 0
  end
  
   def time_string(h=0, m=0, s=0)
      
      s = ( @seconds % 60)
      m = ( @seconds/60) % 60
      h = ( @seconds / 3600)
   
      "#{format('%02d', h)}:#{format('%02d', m)}:#{format('%02d', s)}"
     
   end
  
end