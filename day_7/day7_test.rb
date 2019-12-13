require '../main'
require './day7'
require 'pry'

input = Main::DAY7

test_1 = [3,15,3,16,1002,16,10,16,1,16,15,15,4,15,99,0,0]
result_1 = 43210
parameters_1 = [4,3,2,1,0]

test_2 = [3,23,3,24,1002,24,10,24,1002,23,-1,23,101,5,23,23,1,24,23,23,4,23,99,0,0]
result_2 = 54321
parameters_2 = [0,1,2,3,4]

test_3 = [3,31,3,32,1002,32,10,32,1001,31,-2,31,1007,31,0,33,1002,33,7,33,1,33,31,31,1,32,31,31,4,31,99,0,0,0]
result_3 = 65210
parameters_3 = [1,0,4,3,2]

test_looped_1 = [3,26,1001,26,-4,26,3,27,1002,27,2,27,1,27,26,27,4,27,1001,28,-1,28,1005,28,6,99,0,0,5]
result_looped_1 = 139629729
parameters_looped_1 = [9,8,7,6,5]

test_looped_2 = [3,52,1001,52,-5,52,3,53,1,52,56,54,1007,54,5,55,1005,55,26,1001,54,-5,54,1105,1,12,1,53,54,53,1008,54,0,55,1001,55,1,55,2,53,55,53,4,53,1001,56,-1,56,1005,56,6,99,0,0,0,0,10]
result_looped_2 = 18216
parameters_looped_2 = [9,7,8,5,6]


p "PART 1"
p "Tests"
part_1_test_1 = Day7.max_power(test_1)
part_1_test_2 = Day7.max_power(test_2)
part_1_test_3 = Day7.max_power(test_3)
p part_1_test_1[0] == result_1
p part_1_test_2[0] == result_2
p part_1_test_3[0] == result_3

p "Results"
result_part_1 = Day7.max_power(input)
p 117312 == result_part_1
p result_part_1

p "----------"
p "PART 2"
p "Tests"
part_2_test_1 = Day7.max_power_looped(test_looped_1)
part_2_test_2 = Day7.max_power_looped(test_looped_2)
p part_2_test_1[0] = result_looped_1
p part_2_test_2[0] = result_looped_2
p "Results"
result_part_2 = Day7.max_power_looped(input)
p result_part_2