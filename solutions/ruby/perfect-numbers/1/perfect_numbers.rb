class PerfectNumber
  def self.classify(n) 
    return raise ArgumentError, 'Classification is only possible for positive integers.' if n <= 0
    d = [1]
    (2..Math.sqrt(n)).each do |x|
      if n % x == 0
        d << x
        d << n / x
      end
    end
    s = d.uniq.sum
    return 'deficient' if s < n or n == 1
    return 'perfect' if s == n
    'abundant' 
  end
end