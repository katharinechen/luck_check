def luck_check(string)
  stringArray = string.split("").map { |x| x.to_i }
  return false if stringArray.length == 0
  first_half = stringArray[0..stringArray.length/2 -1].inject {|sum, x| sum + x}
  second_half = stringArray[(stringArray.length/2.0).ceil..-1].inject {|sum, x| sum + x}
  first_half == second_half
end
