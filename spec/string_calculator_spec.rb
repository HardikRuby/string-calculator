# frozen_string_literal: true

require_relative '../string_calculator'
require 'pry'

describe StringCalculator do
  describe '#add' do
    context 'method input' do
      it 'expects string in argument' do
        expect { described_class.add('1') }.to_not raise_error
        expect { described_class.add(1) }.to raise_error(RuntimeError, 'Argument must be a string')
      end
      
      it 'expects only one argument' do
        expect { described_class.add(1, 2) }.to raise_error(ArgumentError)
      end
    end
  end
end
