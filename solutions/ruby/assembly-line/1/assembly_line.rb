class AssemblyLine
  def initialize(speed)
    @speed = speed
  end

  def production_rate_per_hour
    if @speed < 10
      return @speed * 221 * (1.1 - ((@speed/4.to_f).ceil)/10.to_f)
    end
    @speed * 221 * 0.77
  end
  
  def working_items_per_minute
    (production_rate_per_hour/60).to_i
  end
end
