class Card
  attr_reader :suit, :kind, :value
  def initialize(suit, kind, value)
    @suit = suit
    @kind = kind
    @value = value
  end
end
