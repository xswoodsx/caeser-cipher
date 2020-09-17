require './lib/caeser_cipher.rb'

describe 'caeser cipher function' do
  it 'returns a single letter shifted one place' do
    string = 'a'
    value = 1

    actual = caeser_cipher(string, value)
    expected = 'b'
    expect(actual).to eql(expected)
  end

  it 'returns multiple letters shifted 2 places' do
    string = 'steven'
    value = 2
    actual = caeser_cipher(string, value)

    expected = 'uvgxgp'
    expect(actual).to eql(expected)
  end
  it 'returns letters that go over the end of the alphabet and return the earlier letters' do
    string = 'xyz'
    value = 3

    actual = caeser_cipher(string, value)
    expected = 'abc'

    expect(actual).to eql(expected)
  end
end
