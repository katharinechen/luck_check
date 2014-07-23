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
end

# In some countries of former Soviet Union there was a belief about lucky tickets. A transport ticket of any sort was believed to posess luck if sum of digits on the left half of its number was equal to the sum of digits on the right half. Here are examples of such numbers:

# 003111    # 3 = 1 + 1 + 1
# 813372    # 8 + 1 + 3 = 3 + 7 + 2
# 17935     # 1 + 7 = 3 + 5
# 56328116
# Such tickets were either eaten after being used or collected for bragging rights.

# Your task is to write a function luck_check(string), which returns true if an argument is a string decimal representation of a lucky ticket number, or false for all other numbers. It should handle errors for empty strings or strings which don't represent a decimal number.
