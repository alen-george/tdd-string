def add(string)
    seperator = ","
    if string.start_with?("//")
      seperator = f_delimiter_and_truncate(string)
    end

    if string.include?("\n")
      string.gsub!("\n",seperator)
    end

    if(string.length > 1)
      arr_format = string.split('')
      if arr_format.include?('-') and seperator != '-'
        handle_negative_numbers(arr_format)
      elsif arr_format.include?(seperator)
        return arr_format.join('').split(seperator).map(&:to_i).sum
      else
        return arr_format.map(&:to_i).sum
      end
    end
    string.to_i
  end


  def f_delimiter_and_truncate(string)
      newline_index = string.index("\n")
      seperator = string[string.index("//")+2...newline_index]
      string = string[newline_index+1..]
      seperator
  end


  def handle_negative_numbers(arr_format)
    negative_numbers = []
    arr_format.each_with_index do |char,index|
      if char == '-' and integer_string?(arr_format[index+1])
        negative_numbers << char+arr_format[index+1]
      end
    end
    raise ArgumentError, "negative numbers are not allowed " + negative_numbers.join(',') if negative_numbers.any?
  end

  def integer_string?(str)
    return false if str.nil?
    Integer(str)
    true
  rescue ArgumentError
    false
  end
