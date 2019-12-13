require '../day_5/day5'

class Day7
  def self.process(input, amp_input, output_amp_5)
    amp_1 = Day5.process(input.dup, [amp_input[0], output_amp_5])
    amp_2 = Day5.process(input.dup, [amp_input[1], amp_1[-1]])
    amp_3 = Day5.process(input.dup, [amp_input[2], amp_2[-1]])
    amp_4 = Day5.process(input.dup, [amp_input[3], amp_3[-1]])
    amp_5 = Day5.process(input.dup, [amp_input[4], amp_4[-1]])
    amp_5[-1]
  end

  def self.max_power(input)
    max = [0, []]
    amp_inputs_part_1.each do |amp_input|
      power = process(input, amp_input, 0)
      if power > max[0]
        max[0] = power
        max[1] = amp_input
      end
    end
    max
  end

  def self.max_power_looped(input)
    max = [0, []]
    amp_inputs_part_1.each do |amp_input|
      power = process(input, amp_input, 0)
      if power > max[0]
        max[0] = power
        max[1] = amp_input
      end
    end
    max
  end

  private

  def self.amp_inputs_part_1
    (0..4).to_a.permutation(5).to_a
  end

  def self.amp_inputs_part_2
    (5..9).to_a.permutation(5).to_a
  end
end
