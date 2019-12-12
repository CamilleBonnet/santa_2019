require './day1'
require '../main'

input = Main::DAY1

p "PART 1"
p "Tests"
p Day1.simple_method(%w(1969)) == 654
p Day1.simple_method(%w(100756)) == 33583
p ""
p "Resuls"
p Day1.simple_method(input)
p "----------"
p "PART 2"
p "Tests"
p Day1.complex_method(%w(1969)) == 966
p Day1.complex_method(%w(100756)) == 50346
p
p "Resuls"
p Day1.complex_method(input)