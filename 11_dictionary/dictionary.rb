class Dictionary
  
  def initialize(d = {})
    @d = d
  end
 
 def add(n)
   if n.is_a?(String)
     @d[n] = nil
   else
     n.each {|k, v| @d[k] = v }
   end
 end
  
  def entries
    @d
  end
  
  def keywords
    @d.keys.sort
  end
  
  def include?(n)
    @d.include?(n)
  end
  
     def find(n)
	     answer = {}
	     @d.each do |k,v|
         
         if k[0...n.length] == n
		       answer[k] = v
		     end
    
		     if n[0..1] == k[0..1]
		       answer[k] = v
		      end

		   end
		  return answer
	    end
  
    def printable
      @d.sort.map {|k, v| "[#{k}] \"#{v}\""}.join("\n")
    end
  
end