require 'spec_helper'

describe '#caesar_cipher' do
  it 'properly enciphers text' do
    expect(caesar_cipher(
      'ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstuvwxyz 1234567890', 57)
    ).to eq 'FGHIJKLMNOPQRSTUVWXYZABCDE fghijklmnopqrstuvwxyzabcde 1234567890'
  end
end

describe '#duplicate_counter' do
  it 'returns the number of duplicate elements' do
    expect(duplicate_counter([1, 7, 7, 7, 3, 5])).to eq 2
    expect(duplicate_counter([5, 7, 9])).to eq 0
    expect(duplicate_counter([0, -5, -5, 33, 33, 33])).to eq 3
  end
end

describe '#minimum_consecutive_integers_uniq' do
  it 'returns the correct number of integers needed' do
    expect(minimum_consecutive_integers_uniq([1, 3])).to eq 1
    expect(minimum_consecutive_integers_uniq([2, 5])).to eq 2
    expect(minimum_consecutive_integers_uniq([-1, 4])).to eq 4
  end
end

describe '#minimum_consecutive_integers' do
  it 'returns the correct number of integers needed' do
    expect(minimum_consecutive_integers([1, 1, 3, 3])).to eq 1
    expect(minimum_consecutive_integers([2, 2, 5, 5])).to eq 2
    expect(minimum_consecutive_integers([-1, -1, 4, 4])).to eq 4
  end
end

describe '#guesser and #guesser_with_check' do
  GUESS_TEST = [0, 5, 7, 9, 14, 25, 61, 65, 1001, 1_000_000]

  it 'finds the number, or returns false if it does not occur in the array' do
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
    expect(guesser(GUESS_TEST, 13)).to eq false
    expect(guesser(GUESS_TEST, 15)).to eq false
    expect(guesser(GUESS_TEST, 24)).to eq false
    expect(guesser(GUESS_TEST, 26)).to eq false
    expect(guesser(GUESS_TEST, 60)).to eq false
    expect(guesser(GUESS_TEST, 62)).to eq false
    expect(guesser(GUESS_TEST, 64)).to eq false
    expect(guesser(GUESS_TEST, 66)).to eq false
    expect(guesser(GUESS_TEST, 999)).to eq false
    expect(guesser(GUESS_TEST, 1002)).to eq false
    expect(guesser(GUESS_TEST, 999_999)).to eq false
    expect(guesser(GUESS_TEST, 1_000_001)).to eq false
  end

  it 'takes the minimum number of guesses to find the number' do
    expect(guesser_with_check(GUESS_TEST, 0)).to eq true
    expect(guesser_with_check(GUESS_TEST, 5)).to eq true
    expect(guesser_with_check(GUESS_TEST, 7)).to eq true
    expect(guesser_with_check(GUESS_TEST, 9)).to eq true
    expect(guesser_with_check(GUESS_TEST, 14)).to eq true
    expect(guesser_with_check(GUESS_TEST, 25)).to eq true
    expect(guesser_with_check(GUESS_TEST, 61)).to eq true
    expect(guesser_with_check(GUESS_TEST, 65)).to eq true
    expect(guesser_with_check(GUESS_TEST, 1001)).to eq true
    expect(guesser_with_check(GUESS_TEST, 1_000_000)).to eq true
  end
end

describe '#minimum_coins' do
  it 'returns the minimum number of coins needed' do
    expect(minimum_coins(35)).to eq 2
    expect(minimum_coins(37)).to eq 4
    expect(minimum_coins(101)).to eq 2
  end
end

describe '#palindrome?' do
  it 'correctly determines if a string is a palindrome' do
    expect(palindrome?('A Santa at NASA')).to eq true
    expect(palindrome?('Elvis lives')).to eq false
  end
end

describe '#permutation?' do
  it 'correctly determines if a string is a permutation of another' do
    expect(permutation?('thickens', 'kitchens')).to eq true
    expect(permutation?('thickens', 'kitchen')).to eq false
  end
end

describe '#uniqueness_checker' do
  it 'correctly determines whether each character is unique' do
    expect(unique?('abcde')).to eq true
    expect(unique?('aabcde')).to eq false
    expect(unique?('abacde')).to eq false
    expect(unique?('abcade')).to eq false
    expect(unique?('abcdae')).to eq false
    expect(unique?('abcdea')).to eq false
    expect(unique?('babcde')).to eq false
    expect(unique?('abbcde')).to eq false
    expect(unique?('abcbde')).to eq false
    expect(unique?('abcdbe')).to eq false
    expect(unique?('abcdeb')).to eq false
    expect(unique?('cabcde')).to eq false
    expect(unique?('acbcde')).to eq false
    expect(unique?('abccde')).to eq false
    expect(unique?('abcdce')).to eq false
    expect(unique?('abcdec')).to eq false
    expect(unique?('dabcde')).to eq false
    expect(unique?('adbcde')).to eq false
    expect(unique?('abdcde')).to eq false
    expect(unique?('abcdde')).to eq false
    expect(unique?('abcded')).to eq false
    expect(unique?('eabcde')).to eq false
    expect(unique?('aebcde')).to eq false
    expect(unique?('abecde')).to eq false
    expect(unique?('abcede')).to eq false
    expect(unique?('abcdee')).to eq false
  end
end
