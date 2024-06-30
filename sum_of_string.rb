def add(string)
    return 0 unless string.length


    seperator = ","
    if string.start_with?("//")
      seperator = string[2]
      string = string[string.index("\n")+1..]
    end


    if string.include?("\n")
      string.gsub!("\n",seperator)
    end

    if(string.length > 1)
      arr_format = string.split('')
      if arr_format.include?(seperator)
        return arr_format.join('').split(seperator).map(&:to_i).sum
      end
      return arr_format.map(&:to_i).sum
    end
    string.to_i
  end
