module MyEnumerable
  
  def all?(&block)
    each do |item|
      return false unless block.call(item)
    end
    return true
  end

  def any?(&block)
    each do |item|
      return true if block.call(item)
    end
    return false
  end

  def filter(&block)
    result = []
    each do |item|
      if block.call(item)
        result << item
      end
    end
    return result
  end
end