require 'spec_helper'

describe LoveLetterCardGame do
  it 'has a version number' do
    expect(LoveLetterCardGame::VERSION).not_to be nil
  end

  # it 'is a playable game' do
  #   deck = [LETTER_HOLDERS[:guard], LETTER_HOLDERS[:princess], [LETTER_HOLDERS[:priest]]
  #   player_1 = Suitor.new
  #   player_2 = Suitor.new
  #   game = LoveLetterCardGame::Game.new(players: [player_1, player_2], deck: deck)
  #   round = game.start_round
  #   expect(player_1.letter_holders).to include(LETTER_HOLDERS[:guard])
  #   player_1.draw(round)
  #   expect(player_1.letter_holders).to include(LETTER_HOLDERS[:guard], LETTER_HOLDERS[:priest])
  #   player_1.discard(:guard, {target_opponent: player_2, guessed_letter_holder: :princess})
  #   expect(player_2.out_of_round?(round)).to eq true
  #   expect(round.ended?).to eq true
  #   expect(round.winner).to eq player_1
  # end

  # it "can setup a new game" do
  #   game = LoveLetterCardGame::Game.setup(number_of_players: 3)
  #   deck = game.deck

  #   expect(deck.size).to eq 15
  #   expect(game.players.size).to eq 3
  # end

  # it "is ended when the deck is empty" do
  #   game = LoveLetterCardGame::Game.new(players: 2, deck: [])
  #   expect(round.ended?).to eq true
  # end

  # it "is ended when all but one players are out" do
  #   players = [instance_double(LoveLetterCardGame::Player, out?: true), instance_double(LoveLetterCardGame::Player, out?: false)]
  #   round = LoveLetterCardGame::Game.new(players: players, deck: [:guard])
  #   expect(round.ended?).to eq true
  # end

  # it "is ended when all but one players are out" do
  #   game = LoveLetterCardGame::Game.build(ThreePlayerGame.new)
  #   game.ended?
  #   game.winner
  # end
end
