require 'pry'
class CreditCheck

  attr_reader :credit_card_number

  def initialize(credit_card_number)
    @credit_card_number = credit_card_number
  end

  def split_card_number_up
    credit_card_number.split("")
  end

  def numbers_with_doubles
    split_card_number_up.each_with_index.map do |num, i|
      if i.even? || i.zero?
        (num.to_i * 2).to_s
      else
        num
      end
    end
  end

  def reduce_double_digits
    numbers_with_doubles.map do |num|
      if num.length == 2
        convert_to_integer(num).inject(:+).to_s
      else
        num
      end
    end
  end

  def convert_to_integer(num)
    num.split("").map do |split_num|
      split_num.to_i
    end
  end

  def reduced_to_sum
    dumb_nums = reduce_double_digits.map do |num|
                        num.to_i
                    end
    dumb_nums.inject(:+)
  end

  def valid?
    if reduced_to_sum % 10 == 0
      "Valid Card"
    else
      "Invalid Card"
    end
  end
end
