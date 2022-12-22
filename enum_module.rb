module MyEnumerable
  def all?
    each do |i|
      return true unless block_given?

      return false unless yield(i)
    end
    true
  end

  def any?
    each do |i|
      return true unless block_given?
      return true if yield(i)
    end
    false
  end

  def enum_filter?
    array = []
    each { |i| array.push(i) if yield(i) }
    array
  end
end
