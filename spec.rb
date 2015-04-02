require_relative 'caesar_cipher'
require_relative 'optimal_guesser'
require_relative 'palindrome'

describe '#caesar_cipher' do
  it 'properly enciphers text' do
    expect(caesar_cipher('ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstuvwxyz 1234567890', 57
    )).to eq 'FGHIJKLMNOPQRSTUVWXYZABCDE fghijklmnopqrstuvwxyzabcde 1234567890'
  end
end

describe '#optimal_guesser' do
  it 'answers correctly' do
    GUESS_TEST = [0, 5, 7, 9, 14, 25, 61, 65, 1001, 1_000_000]
    expect(guesser(GUESS_TEST, 0)).to eq true
    expect(guesser(GUESS_TEST, 5)).to eq true
    expect(guesser(GUESS_TEST, 7)).to eq true
    expect(guesser(GUESS_TEST, 9)).to eq true
    expect(guesser(GUESS_TEST, 14)).to eq true
    expect(guesser(GUESS_TEST, 25)).to eq true
    expect(guesser(GUESS_TEST, 61)).to eq true
    expect(guesser(GUESS_TEST, 65)).to eq true
    expect(guesser(GUESS_TEST, 1001)).to eq true
    expect(guesser(GUESS_TEST, 1_000_000)).to eq true
    expect(guesser(GUESS_TEST, -1)).to eq false
    expect(guesser(GUESS_TEST, 1)).to eq false
    expect(guesser(GUESS_TEST, 6)).to eq false
    expect(guesser(GUESS_TEST, 8)).to eq false
    expect(guesser(GUESS_TEST, 10)).to eq false
    expect(guesser(GUESS_TEST, 15)).to eq false
    expect(guesser(GUESS_TEST, 26)).to eq false
    expect(guesser(GUESS_TEST, 62)).to eq false
    expect(guesser(GUESS_TEST, 66)).to eq false
    expect(guesser(GUESS_TEST, 1002)).to eq false
    expect(guesser(GUESS_TEST, 1_000_001)).to eq false
  end

  describe '#palindrome?' do
    it 'answers correctly' do
      expect(palindrome?('A Santa at NASA')).to eq true
      expect(palindrome?('Elvis lives')).to eq false
    end
  end
end
