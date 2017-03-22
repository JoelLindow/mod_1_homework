require 'minitest/autorun'
require 'minitest/pride'
require './lib/calculator'


# .new = new calculation (clear screen) \
# #total = returned value of the mathematical methods
# #add = ability to be able to add numbers  \
# #clear = clear screen (reset calculation) to 0 \
# #subtract = ability to subtract a number  \

class CalculatorTest <Minitest::Test


  #starts at zero
  def test_if_it_is_a_calculator
    calculator = Calculator.new
    assert_instance_of Calculator, calculator
  end

  def test_if_it_starts_as_zero
    calculator = Calculator.new
    assert_equal 0, calculator.number
  end

  def test_if_it_can_add
    calculator = Calculator.new
    assert_equal 1, calculator.add(1)
  end

  def test_if_it_can_subtract
    calculator = Calculator.new
    assert_equal -1, calculator.subtract(1)
  end

  def test_it_can_find_the_total
    calculator = Calculator.new
    calculator.add(1)
    calculator.add(27)
    calculator.add(1)
    assert_equal 29, calculator.total
  end

  def test_it_can_clear
    calculator = Calculator.new
    calculator.add(1)
    calculator.add(27)
    calculator.add(1)
    assert_equal 0, calculator.clear
  end



end
