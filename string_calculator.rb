# frozen_string_literal: true
require 'pry'

class StringCalculator
  def self.add(string_of_numbers)
    raise 'Argument must be a string' unless string_of_numbers.is_a?(String)

    return 0 if string_of_numbers.length == 0
    delimiter = find_delimiter(string_of_numbers)
    numbers = extract_numbers(string_of_numbers, delimiter)
    numbers.sum
  end

  private

  # find differnt delimiters
  def self.find_delimiter(string_of_numbers)
    delimiter = ","
    if string_of_numbers.start_with?("//")
      delimiter = string_of_numbers[2]
    end
    delimiter
  end

  # Extracts numbers from the string
  def self.extract_numbers(string_of_numbers, delimiter)
    string_of_numbers = string_of_numbers.gsub(/\/\/.*\n/, '').gsub(/(?<=\d)\n(?=\d)/, delimiter)
    string_of_numbers.split(Regexp.new(delimiter)).map(&:to_i)
  end
end
