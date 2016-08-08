require "love_letter_card_game/version"
require "love_letter_card_game/game"
require "love_letter_card_game/player"
require "love_letter_card_game/deck"
require "love_letter_card_game/round"

module LoveLetterCardGame
  class TwoPlayerGame
    TOKENS_REQUIRED_TO_WIN_GAME = 7
  end

  class ThreePlayerGame
    TOKENS_REQUIRED_TO_WIN_GAME = 5
  end

  class FourPlayerGame
    TOKENS_REQUIRED_TO_WIN_GAME = 4
  end
end
