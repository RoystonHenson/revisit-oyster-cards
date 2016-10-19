require "./lib/oystercard"

describe Oystercard do
  subject {described_class.new}

  describe "#initialize"
    it "initialises card with balance of '0'" do
      expect(subject.balance).to eq(0)
    end
end
