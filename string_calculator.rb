# frozen_string_literal: true

require 'pry'

# This class is responsible to return addition of input string containing numbers
class StringCalculator
  def self.add(string_of_numbers)
    raise ArgumentError, 'Argument must be a string' unless string_of_numbers.is_a?(String)

    return 0 if string_of_numbers.empty?

    delimiter = find_delimiter(string_of_numbers)
    numbers = extract_numbers(string_of_numbers, delimiter)
    return 'Invalid input' unless numbers.all?{ |element| valid?(element) }

    numbers_arr = numbers.map(&:to_i)
    check_for_negatives(numbers_arr)
    numbers_arr.sum
  end

  class << self
    private

    # find differnt delimiters
    def find_delimiter(string_of_numbers)
      string_of_numbers.start_with?('//') ? string_of_numbers[2] : ','
    end

    # Extracts numbers from the string
    def extract_numbers(string_of_numbers, delimiter)
      string_of_numbers = string_of_numbers.gsub(%r{//.*\n}, '').gsub(/(?<=\d)\n(?=\d)/, delimiter)
      string_of_numbers.split(Regexp.new(delimiter))
    end

    def valid?(string)
      !string.scan(/^[-+]?\d*\.?\d+$/).empty?
    end

    # Checks for negative numbers and raises an exception if any are found
    def check_for_negatives(numbers)
      negatives = numbers.select(&:negative?)
      raise ArgumentError, "Negative numbers not allowed: #{negatives.join(', ')}" if negatives.any?
    end
  end
end
