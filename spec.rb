require_relative 'caesar_cipher'

describe '#caesar_cipher' do
  it 'properly enciphers text' do
    expect(caesar_cipher(
      'ABCDEFGHIJKLMNOPQRSTUVWXYZ abcdefghijklmnopqrstuvwxyz 1234567890', 57
    )).to eq('FGHIJKLMNOPQRSTUVWXYZABCDE fghijklmnopqrstuvwxyzabcde 1234567890')
  end
end
