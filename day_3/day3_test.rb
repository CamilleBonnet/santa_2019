require './day3'
require '../main'

path_1 = [%w(R75 D30 R83 U83 L12 D49 R71 U7 L72),  %w(U62 R66 U55 R34 D71 R55 D58 R83)]
path_2 = [%w(R98 U47 R26 D63 R33 U87 L62 D20 R33 U53 R51),  %w(U98 R91 D20 R16 D67 R40 U7 R15 U6 R7)]
distance_1 = 159
distance_2 = 135

input = Main::DAY3

results_1 = Day3.compute_distance(path_1)
results_2 = Day3.compute_distance(path_2)
result = Day3.compute_distance(input)

p "PART 1"
p "Tests"
p results_1 == distance_1
p results_2 == distance_2
p "Results"
p  result

p "----------"
p "PART 2"
p "Resutls"
r_1 = Day3.minimize_delay(path_1)
r_2 = Day3.minimize_delay(path_2)
p r_1 == 610
p r_2 == 410
r = Day3.minimize_delay(input)
p r