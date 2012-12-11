class ScreenTable
  
  def initialize(values)
    @values = values
  end

  def pcell(s,l=2)
   print "%0#{l+1}s" % s
  end

  def draw()
    n = @values.size

    last = @values.last

    pcell(" ", last.to_s.size)                            # corner
    @values.each{ |x| pcell( x , (x*last).to_s.size) }    # x values
    puts    # new line

    i = 0
    # print y and body
    while i < n
      pcell(@values[i],last.to_s.size)                    # print y value

      j = 0
      while j < n
        pcell(@values[i]*@values[j], (@values[j]*last).to_s.size)    # print product rows
        j +=1
      end
      
      puts  # new line

      i += 1
    end
  
  end

end
