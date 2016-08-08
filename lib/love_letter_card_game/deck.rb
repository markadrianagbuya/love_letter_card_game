module LoveLetterCardGame
  class Deck

    def self.full_deck
      [:guard, :guard, :guard, :guard, :guard, :priest, :priest, :baron, :baron, :hand_maid, :hand_maid, :prince, :prince, :king, :countess, :princess]
    end

    def initialize(game)
      self.game = game
    end

    def draw
      self.current_card = game.deck.shift
    end
  end
end