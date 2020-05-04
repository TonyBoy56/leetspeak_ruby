require('rspec')
require('leetspeak')

describe("#translator") do

  it('returns a string as is when no translator rules apply') do
    expect("happy".translator).to eq(["h","a","p","p","y"])
  end
  it('returns a word into an array') do
    expect("bee".translator).to eq(["b","e","e"])
  end
  it('returns "e" to "3"') do
    expect("week".translator).to eq(["w","3","3","k"])
  end

end