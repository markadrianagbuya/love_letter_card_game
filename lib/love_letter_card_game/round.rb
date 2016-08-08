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

    def winner
      if players.reject(&:out?).count == 1
        players.detect{|player| !player.out?}
      end
    end
  end
end
