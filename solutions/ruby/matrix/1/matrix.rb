class Matrix
  def initialize(matrix_string)
    @matrix = matrix_string.lines.map do |line|
      line.split.map(&:to_i)
    end 
  end

  def row(l)
    @matrix[l-1]
  end

  def column(l)
    @matrix.map {|r| r[l-1]}
  end
  
end