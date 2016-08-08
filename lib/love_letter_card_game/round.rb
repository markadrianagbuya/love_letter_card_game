module LoveLetterCardGame
  class Round
    attr_accessor :deck, :players

    def initialize(deck: [], players: [])
      self.deck = deck
      self.players = players
    end

    def ended?
      deck.empty? || players.reject(&:out?).count == 1
    end
  end
end
