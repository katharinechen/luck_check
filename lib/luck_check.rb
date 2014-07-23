
def luck_check(string)

  stringArray = string.split("")

  if stringArray.length == 0
    return false
  end

  stringArray.map! { |x| x.to_i }

  if stringArray.length.even?
    first_half = stringArray[0..stringArray.length/2 -1].inject {|sum, x| sum + x}
    second_half = stringArray[stringArray.length/2..-1].inject {|sum, x| sum + x}
    return first_half == second_half
  else
    first_half = stringArray[0..stringArray.length/2 -1].inject {|sum, x| sum + x}
    second_half = stringArray[(stringArray.length/2 + 1)..-1].inject {|sum, x| sum + x}
    return first_half == second_half
  end
end
