def add(string)
    return 0 unless string.length

    if(string.length > 1)
      return string.split('').map(&:to_i).sum
    end
    string.to_i
  end
