require('rspec')
require('num_to_words')

describe('#num_to_words') do
  it("returns a word for any digit") do
    expect(word = Number.new(1).to_word()).to(eq("one"))
  end
  it("returns a word for numbers between eleven and nineteen") do
    expect(word = Number.new(11).to_word()).to(eq("eleven"))
  end
  it("returns a word for multiples of ten up to ninety") do
    expect(word = Number.new(10).to_word()).to(eq("ten"))
  end
  it("returns a word for numbers between twenty one and ninety nine") do
    expect(word = Number.new(45).to_word()).to(eq("fourty five"))
  end
  it("returns a word for numbers between twenty one and ninety nine") do
    expect(word = Number.new(76).to_word()).to(eq("seventy six"))
  end
  it("returns a word for numbers between one hundreed and nine hundred ninety nine") do
    expect(word = Number.new(115).to_word()).to(eq("one hundred fifteen"))
  end
  it("returns a word for numbers between one hundreed and nine hundred ninety nine") do
    expect(word = Number.new(876).to_word()).to(eq("eight hundred seventy six"))
  end
  it("returns a word for numbers between one hundreed and nine hundred ninety nine") do
    expect(word = Number.new(999).to_word()).to(eq("nine hundred ninety nine"))
  end
  it("returns a word for numbers between one thousand and nine thousand nine hundred ninety nine") do
    expect(word = Number.new(1110).to_word()).to(eq("one thousand one hundred ten"))
  end
  it("returns a word for numbers between one thousand and nine thousand nine hundred ninety nine") do
    expect(word = Number.new(8760).to_word()).to(eq("eight thousand seven hundred sixty"))
  end
end
