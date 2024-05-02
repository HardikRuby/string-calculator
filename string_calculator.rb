# frozen_string_literal: true

class StringCalculator
  def self.add(string_of_numbers)
    raise 'Argument must be a string' unless string_of_numbers.is_a?(String)
  end
end
