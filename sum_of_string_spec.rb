require "./sum_of_string"

describe 'Sum of integers from the String' do
  describe 'add' do
    context "an empty string" do
      it "return zero" do
        expect(add('')).to eq 0
      end

    end

    context "a single digit integer in string format" do
      it 'return the digit' do
        expect(add('8')).to eq 8
      end

    end

    context "a double digit integer in string format" do
      it 'return the sum of digits' do
        expect(add('813')).to eq 12
      end

    end

    context "a CSV of integers" do
      it 'return the sum of all digits' do
        expect(add('8,1,3')).to eq 12
      end
    end

    context "with newline character in between the digits" do
      it 'returns the sum post handle of newline ' do
        expect(add("8\n1,3")).to eq 12
      end
    end

    context "with custom seperator provided in begining of the string in a specified format" do
      it 'returns the sum of digits with custom seperator' do
        expect(add("//;\n1;2")).to eq 3
      end

      it 'returns sum with newline character included in between' do
        expect(add("//;\n1;2\n3")).to eq 6
      end
    end

  end

end
