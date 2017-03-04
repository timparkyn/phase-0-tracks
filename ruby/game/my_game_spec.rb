require_relative 'my_game'


describe Hangman do
  let(:game) { Hangman.new('funkinstein') }

it "stores the list items given on initialization" do
    expect(game.show_me.length).to eq 11
  end

it "breaks the word into an array" do
    expect(game.index_me(1)).to eq 'u'
  end


 it "sets guess_array to underscores" do
    expect(game.show_me_guess(1)).to eq '_'
  end

it "checks word array is same length as guess array" do
    expect(game.word_array.length == game.guess_array.length)
  end

it "checks character position in guess array"
	expect(game.word_array.length == game.guess_array.length)
  end
end