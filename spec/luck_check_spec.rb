require 'rspec'
require 'luck_check'

describe 'luck_check' do
  it ("checks if a string with an even number and tells you if it is lucky") do
    expect(luck_check("003111")).to(eq(true))
  end

  it ("checks if a string with an odd number of digits is lucky") do
    expect(luck_check("43252")).to(eq(true))
  end

  it ("checks if an even digit number is not lucky") do
    expect(luck_check("4359")).to(eq(false))
  end

  it ("checks if an odd digit number is not lucky") do
    expect(luck_check("12345")).to(eq(false))
  end

  it ("takes an empty string and says it's not lucky") do
    expect(luck_check("")).to(eq(false))
  end

  it ("takes a string with non-integer character and says it is lucky") do
    expect(luck_check("2e11")).to(eq(true))
  end
end
