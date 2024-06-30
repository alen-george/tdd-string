def add(string)
    return 0 unless string.length

    if string.include?("\n")
      string.gsub!("\n", ",")
    end

    if(string.length > 1)
      arr_format = string.split('')
      if arr_format.include?(',')
        return arr_format.join('').split(',').map(&:to_i).sum
      end
      return arr_format.map(&:to_i).sum
    end
    string.to_i
  end
