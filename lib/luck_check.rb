def luck_check(string)
  stringArray = string.split("").map { |x| x.to_i }
  first_half = stringArray[0..stringArray.length/2 -1].inject {|sum, x| sum + x}
  second_half = stringArray[(stringArray.length/2.0).ceil..-1].inject {|sum, x| sum + x}
  first_half == second_half && second_half != nil
end
