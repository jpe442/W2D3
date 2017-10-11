require "rspec"
require "tdd"

describe "#my_uniq" do
  it 'removes any duplicates from the array' do
    expect(my_uniq([1,2,3,4,5,5,5])).to eq([1,2,3,4,5])
  end

  it 'returns an empty array when passed an empty array' do
    expect(my_uniq([])).to eq([])
  end

  it 'returns an array with the same content if passed an array without duplicates' do
    expect(my_uniq([1,2,3])).to eq([1,2,3])
  end
end

describe "#two_sum" do
  it "finds pairs that sum to zero" do
    expect(two_sum([-1,0,-2,2,1])).to eq([[0,4], [2,3]])
  end

  it "doesn't return spurious pairs" do
    expect(two_sum([0])).to eq([])
  end

  it "returns arrays" do
    expect(two_sum([1,-1,2])).to be_an_instance_of(Array)
  end
end

describe "#my_transpose" do
  it "rotates square matrix" do
    expect(my_transpose([[0, 1, 2],[3, 4, 5],[6, 7, 8]])).to eq([[0, 3, 6],[1, 4, 7],[2, 5, 8]])
  end

end

describe "#stock_picker" do

  it "returns days from most profitable pair of prices" do
    expect(stock_picker([100, 200, 300, 400, 500])).to eq([0, 4])
  end

  it "doesn't always return the first and last days" do
    expect(stock_picker([100, 200, 110, 300, 50])).to eq([0, 3])
  end

  it "returns nil if there isn't a profitable day to sell" do
    expect(stock_picker([500, 400, 300, 200])).to eq([])
  end

  context "if same price is available on mutliple days" do
    it "picks the most recent day to buy a stock" do
      expect(stock_picker([100, 100, 100, 500])).to eq([2, 3])
    end
  end
end

describe Towers do
  subject(:towers) { Towers.new }

  describe "#initialize" do
    it 'starts with three discs on first peg' do
      expect(towers.pegs).to eq([[3,2,1], [], []])
    end
  end

  describe "#move_piece" do
    it 'moves a piece to an empty peg' do
      expect(towers.move_piece(0,2)).to eq([[3,2], [], [1]])
    end

    it 'does not let you move a piece from an empty peg' do
      expect { towers.move_piece(2,1) }.to raise_error "invalid move"
    end

    context 'first move has been played' do
      before(:each) do
        towers.move_piece(0,2)
      end

      it 'only adds smaller pieces on a peg' do
        expect {towers.move_piece(0,2)}.to raise_error "invalid move"
      end

      it 'moves a smaller piece onto a larger piece' do
        expect(towers.move_piece(2,0)).to eq([[3,2,1], [], []])
      end
    end
  end
end
