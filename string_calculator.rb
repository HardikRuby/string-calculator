# frozen_string_literal: true
require 'pry'

class StringCalculator
  def self.add(string_of_numbers)
    raise 'Argument must be a string' unless string_of_numbers.is_a?(String)

    return 0 if string_of_numbers.length == 0

    numbers = extract_numbers(string_of_numbers)
    numbers.sum
  end

  private

  # Extracts numbers from the string
  def self.extract_numbers(string_of_numbers)
    string_of_numbers.split(',').map(&:to_i)
  end
end
