module LoveLetterCardGame
  class Player

    attr_accessor :letter_holders, :discarded_letter_holders

    def initialize(letter_holders: [], discarded_letter_holders: [])
      self.letter_holders = letter_holders
      self.discarded_letter_holders = discarded_letter_holders
    end

    def draw(deck)
      letter_holders << deck.shift
    end

    def discard(letter_holder_to_be_discarded)
      letter_holders.delete(letter_holder_to_be_discarded)
      discarded_letter_holders.push(letter_holder_to_be_discarded)
    end

    def out?
    end

    def token_count
    end
  end
end