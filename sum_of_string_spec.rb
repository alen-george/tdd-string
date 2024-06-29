require "./sum_of_string"

describe SumOfString do

  describe '.add' do
    context "an empty string" do
      it "return zero" do
        expect(SumOfString.add('')).to eq 0
      end

    end

  end

end
