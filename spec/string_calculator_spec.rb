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

    context 'when string id blank' do
      it "returns 0" do
        expect(described_class.add("")).to eq 0 
      end
    end

    context 'when valid input passed' do
      it 'returns sum of numbers that are passed as string' do
        expect(described_class.add("1")).to eq 1
        expect(described_class.add("1,5")).to eq 6
      end
    end

    context "when input string contains new line character" do
      it 'returns sum of passed numbers' do
        expect(described_class.add("1\n2,3")).to eq 6
      end
    end
  end
end
