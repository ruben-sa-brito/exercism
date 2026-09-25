class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze
  class UnsupportedOperation < StandardError
  end

  def self.calculate(first_operand, second_operand, operation)
    if first_operand.is_a?(String) or second_operand.is_a?(String)
      raise ArgumentError
    end
    
    if !["+", "-","*", "/"].include?(operation)
      raise UnsupportedOperation
    end
    
    exp = "#{first_operand} #{operation} #{second_operand}"
    exp + " = " + eval(exp).to_s
    
  rescue ZeroDivisionError => e
    "Division by zero is not allowed."
  end
end
