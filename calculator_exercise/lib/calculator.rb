class Calculator
  attr_reader :number

  def initialize
    @number = clear
  end

  def clear
   0
  end

  def add(num)
    @number += num
  end

  def subtract(num)
    @number -= num
  end

  def total
    @number
  end

end
