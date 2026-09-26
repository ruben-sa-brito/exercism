class Series
  def initialize(series)
    if series.empty?
      raise ArgumentError
    end
    @series = series
  end

  def slices(length)
    if @series.size < length || length <= 0
      raise ArgumentError
    end
    @series.scan(/(?=(.{#{length}}))/).flatten
  end
end