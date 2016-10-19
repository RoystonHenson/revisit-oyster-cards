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
    it "raises error if balance exceeds £90" do
      subject.top_up(90)
      expect { subject.top_up(1) }.to raise_error(Oystercard::ERR_EXCEED_MAX_BALANCE)
    end
  end
  describe "#deduct" do
    it "deducts fare from oystercard" do
      subject.top_up(10)
      subject.deduct(1)
      expect(subject.balance).to eq(9)
    end
  end
end
