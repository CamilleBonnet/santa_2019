class Day2
  def self.process(opcode)
    output_opcode = opcode.dup
    opcode.each_with_index do |value, index|
      next unless index % 4 == 0
      break if value == 99
      index_1 = output_opcode[index + 1]
      index_2 = output_opcode[index + 2]
      index_3 = output_opcode[index + 3]
      if value == 1
        output_opcode[index_3] = output_opcode[index_1] + output_opcode[index_2]
      else
        output_opcode[index_3] = output_opcode[index_1] * output_opcode[index_2]
      end
    end
    output_opcode
  end
end