def add(string)
    seperator = ","
    if string.start_with?("//")
      newline_index = string.index("\n")
      seperator = string[string.index("//")+1...newline_index]
      string = string[newline_index+1..]
    end

    if string.include?("\n")
      string.gsub!("\n",seperator)
    end

    if(string.length > 1)
      arr_format = string.split('')
      if arr_format.include?('-')
        negative_numbers = []
        arr_format.each_with_index do |char,index|
          if char == '-' and integer_string?(arr_format[index+1])
            negative_numbers << char+arr_format[index+1]
          end
        end
        raise ArgumentError, "negative numbers are not allowed " + negative_numbers.join(',') if negative_numbers.any?
      elsif arr_format.include?(seperator)
        return arr_format.join('').split(seperator).map(&:to_i).sum
      else
        return arr_format.map(&:to_i).sum
      end
    end
    string.to_i
  end


  def integer_string?(str)
    return false if str.nil?
    Integer(str)
    true
  rescue ArgumentError
    false
  end
