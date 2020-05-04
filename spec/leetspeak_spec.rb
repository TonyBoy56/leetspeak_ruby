require('rspec')
require('leetspeak')

describe("#translator") do

  it('returns a string as is when no translator rules apply') do
    expect("happy".translator).to eq(["h","a","p","p","y"])
  end
  it('returns a word into an array') do
    expect("bee".translator).to eq(["b","3","3"])
  end
  it('returns "e" to "3"') do
    expect("week".translator).to eq(["w","3","3","k"])
  end
  it('returns "o" with "0"') do
    expect("good sound".translator).to eq(["g","0","0","d"," ","s","0","u","n","d"])
  end
  it('returns "I" with "1"') do
    expect("Ice".translator).to eq(["1","c","3"])
  end
  it('returns "I" with "1"') do
    expect("ice".translator).to eq(["i","c","3"])
  end
  it('returns 2 words into an array') do
    expect("boo boo".translator).to eq(["b","0","0"," ","b","0","0"])
  end
  it('returns "s" with "s" when input start with the word "s" ') do
    expect("sounds good".translator).to eq(["s","0","u","n","d","z"," ","g","0","0","d"])
  end


end