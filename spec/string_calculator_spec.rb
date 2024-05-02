require_relative '../string_calculator'

describe StringCalculator do
  describe '#add' do
    context 'when valid arguments passed' do
      it 'does not raise error' do
        expect { described_class.add('1') }.to_not raise_error
      end
    end

    context 'when invalid arguments passed' do
      it 'raises error when integer passed in argument' do
        expect { described_class.add(1) }.to raise_error(ArgumentError, 'Argument must be a string')
      end

      it 'raises error when integer passed in argument' do
        expect { described_class.add(1) }.to raise_error(ArgumentError, 'Argument must be a string')
      end

      it 'raises error when more than one integer passed in argument' do
        expect { described_class.add(1, 2) }.to raise_error(ArgumentError)
      end

      it 'raises error when more than one string passed in argument' do
        expect { described_class.add('1', '2') }.to raise_error(ArgumentError)
      end
    end

    context 'when string id blank' do
      it 'returns 0' do
        expect(described_class.add('')).to eq 0
      end
    end

    context 'when valid input passed' do
      it 'returns sum of numbers that are passed as string' do
        expect(described_class.add('1')).to eq 1
      end

      it 'returns sum of numbers are passed as string separted by comma' do
        expect(described_class.add('1,5')).to eq 6
      end
    end

    context 'when input string contains new line character' do
      it 'returns sum of passed numbers' do
        expect(described_class.add("1\n2,3")).to eq 6
      end

      it "return error when invalid \n passed" do
        expect(described_class.add("1,\n")).to eq 'Invalid input'
      end
    end

    context 'when string has different delimiter' do
      it 'considers delimiter and sum number' do
        expect(described_class.add("//;\n1;2")).to eq 3
      end
    end

    context 'when input string contains negative numbers' do
      it 'raises exception with message' do
        expect { described_class.add('1,-2') }.to raise_error(ArgumentError, 'Negative numbers not allowed: -2')
      end
    end
  end
end
