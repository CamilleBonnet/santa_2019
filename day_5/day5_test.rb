require './day5'
require '../main'
require 'pry'

input = Main::DAY5
test_1 = [3,21,1008,21,8,20,1005,20,22,107,8,21,20,1006,20,31,1106,0,36,98,0,0,1002,21,125,20,4,20,1105,1,46,104,999,1105,1,46,1101,1000,1,20,4,20,1105,1,46,98,99]
first_input_part_1 = [1]
first_input_part_2 = [5]


p "PART 1"
p "Tests"
result = Day5.process(input, first_input_part_1)

p "Results"
p 13210611 == result[-1]
p result

p "----------"
p "PART 2"
p "Tests"

p "Results"
r = Day5.process(input, first_input_part_2)
p 584126 == r[-1]
p r