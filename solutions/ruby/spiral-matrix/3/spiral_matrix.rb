class SpiralMatrix

  def initialize(length)
    @length = length
  end

  def matrix
    
    spiral = Array.new(@length) {Array.new(@length)}
    position = {y: 0, x: 0}
    directions = position.each_key.cycle
    direction = directions.next
    control = 1
    num = 1
    
    while num <= @length**2

      while true

        break if num > @length**2
        spiral[position[:x]][position[:y]] = num
        num += 1
        position[direction] += control

        if position[direction] == @length || 
          ! spiral[position[:x]][position[:y]].nil? 
          
          position[direction] -= control
          direction = directions.next
          control *= -1 if direction == :y
          position[direction] += control

          break

        end
      end 
    end

    spiral

  end
end