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
      it 'return the digit' do
        expect(add('81')).to eq 9
      end

    end

  end

end
