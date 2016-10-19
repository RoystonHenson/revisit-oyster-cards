require "./lib/oystercard"

describe Oystercard do
  subject {described_class.new}

  describe "#initialize"
    it "initialises card with balance of '0'" do
      expect(subject.balance).to eq(0)
    end
  describe "#top_up" do
    it "tops up card with desired amount" do
      subject.top_up(10)
      expect(subject.balance).to eq(10)
    end
  end
end
