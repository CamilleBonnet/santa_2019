require './day4'

test_1 = 111111
test_2 = 223450
test_3 = 123789

min_pwd = 136818
max_pwd = 685979

p "PART 1"
p "Resutls"

r_part_1 = Day4.nb_of_pwd(min_pwd, max_pwd)
p r_part_1.size

r_part_2 = Day4.nb_of_pwd_with_more_criteria(r_part_1).size
p r_part_2