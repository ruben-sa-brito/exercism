class SpiralMatrix

  def initialize(length)
    @length = length
  end

  def matrix

    spiral = Array.new(@length) {Array.new(@length)}

    i = 0
    j = 0
    control = 1
    num = 1

    while num <= @length**2

      while true

        break if num > @length**2
        spiral[i][j] = num
        num+=1
        j+=control

        if j == @length or j == -1 or ! spiral[i][j].nil? or num == @length**2
          j-=control
          break
        end

      end

      i+=control

      while true

        break if num > @length**2
        spiral[i][j] = num
        num += 1
        i += control

        if i == @length or i == -1 or ! spiral[i][j].nil?
          i-=control
          break
        end

      end

      control *= -1
      j+=control

    end

    spiral

  end

end