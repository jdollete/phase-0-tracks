require_relative 'word_guess'

describe Word_guess_game do
  let(:game) { Word_guess_game.new("test") }

  it "Takes player 2's word and sees if it's the same as player 1" do
    game.player2_guess = "house"
    expect(game.check_word).to eq false
  end

  it "Takes player 2's word and sees if it's the same as player 1" do
    game.player2_guess = "test"
    expect(game.check_word).to eq true
  end

  it "Takes player 1's word and turns it into dashes" do
    game.dashes = ("-" * game.player1_word.length).split('').join('')
    expect(game.dashes).to eq "----"
  end

end
