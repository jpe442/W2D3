require 'player'

describe Player do
  subject(:player) { Player.new }
  let(:dealer) { double("dealer") }
  let(:card) { double("King of Spades") }

  describe "#initialize" do
    it "initializes with an empty hand" do
      expect(player.hand).to eq([])
    end
  end

  describe "#receive_card" do
    it "receives card from the dealer" do

      expect(player.receive_card(card)).to eq(player.hand)
    end
  end

end
