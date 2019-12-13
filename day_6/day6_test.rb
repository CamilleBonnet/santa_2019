require './day6'
require '../main'
require 'pry'

input = Main::DAY6

test_value_part_1 = ["B)C", "D)E", "C)D", "E)F", "K)L", "B)G", "COM)B", "E)J", "G)H", "D)I", "J)K"]
test_value_part_2 = ["B)C", "D)E", "C)D", "E)F", "K)L", "K)YOU", "B)G", "COM)B", "I)SAN", "E)J", "G)H", "D)I", "J)K"]

p "PART 1"
p "Tests"
test_result_part_1 = Day6.process(test_value_part_1)
p test_result_part_1 == 42
p test_result_part_1

p "Results"
result = Day6.process(input)
p 147223 == result
p result

p "----------"
p "PART 2"
p "Tests"
test_result_part_2 = Day6.compute_santa_path(test_value_part_2)
p 4 == test_result_part_2
p test_result_part_2

p "Results"
r = Day6.compute_santa_path(input)
p 340 == r
p r
