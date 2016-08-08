module LoveLetterCardGame
  class Round
    attr_accessor :deck
    def initialize(deck: [], players: [])
      self.deck = deck
    end

    def ended?
      deck.empty?
    end
  end
end
