class Day5
  def self.process(code, inputs)
    @output_code = code.dup
    output = []
    i = 0
    input_nb = 0

    while i < @output_code.size
      @parameter_mode = @output_code[i]
      break if @parameter_mode == 99

      operator = @output_code[i].to_s.split("")[-1].to_i

      case operator
      when 1, 2
        index_1 = index_position_or_immediate(2, i)
        index_2 = index_position_or_immediate(3, i)
        index_3 = index_position_or_immediate(4, i)
        @output_code[index_3] = operator == 1 ? @output_code[index_1] + @output_code[index_2] : @output_code[index_1] * @output_code[index_2]
        i += 4
      when 3
        input_index = index_position_or_immediate(2, i)
        @output_code[input_index] = inputs[input_nb]
        input_nb += 1
        i += 2
      when 4
        output_index = index_position_or_immediate(2, i)
        output << @output_code[output_index]
        i += 2
      when 5
        index_1 = index_position_or_immediate(2, i)
        index_2 = index_position_or_immediate(3, i)
        i = @output_code[index_1] > 0 ? @output_code[index_2] : i + 3
      when 6
        index_1 = index_position_or_immediate(2, i)
        index_2 = index_position_or_immediate(3, i)
        i = @output_code[index_1] == 0 ? @output_code[index_2] : i + 3
      when 7
        index_1 = index_position_or_immediate(2, i)
        index_2 = index_position_or_immediate(3, i)
        index_3 = index_position_or_immediate(4, i)
        @output_code[index_3] = @output_code[index_1] < @output_code[index_2] ? 1 : 0
        i += 4
      when 8
        index_1 = index_position_or_immediate(2, i)
        index_2 = index_position_or_immediate(3, i)
        index_3 = index_position_or_immediate(4, i)
        @output_code[index_3] = @output_code[index_1] == @output_code[index_2] ? 1 : 0
        i += 4
      end
    end
    output
  end

  def self.index_position_or_immediate(parameter_nb, i)
    case @parameter_mode.to_s.split("")[parameter_nb * (-1) - 1].to_i
    when 0 # position
      @output_code[i + parameter_nb - 1]
    when 1 # immediate
      i + parameter_nb - 1
    end
  end
end