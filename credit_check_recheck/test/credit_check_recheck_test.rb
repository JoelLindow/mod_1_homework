require 'minitest/autorun'
require 'minitest/pride'
require './lib/credit_check_recheck'

class CreditCheckTest < Minitest::Test

  def test_do_we_have_a_class_called_creditcheck
    credit_card_number = "4929735477250543"
    check = CreditCheck.new(credit_card_number)
    assert_instance_of CreditCheck, check
  end

  def test_card_number_can_be_split
    credit_card_number = "4929735477250543"
    check = CreditCheck.new(credit_card_number)
    split_card = ["4", "9", "2", "9", "7", "3", "5", "4", "7", "7", "2", "5", "0", "5", "4", "3"]
    assert_equal split_card, check.split_card_number_up
  end

  def test_numbers_in_split_array_can_be_doubled_every_other
    credit_card_number = "4929735477250543"
    check = CreditCheck.new(credit_card_number)
    split_card_with_2_times = ["8", "9", "4", "9", "14", "3", "10", "4", "14", "7", "4", "5", "0", "5", "8", "3"]
    assert_equal split_card_with_2_times, check.numbers_with_doubles
  end

  def test_two_digit_numbers_can_be_reduced
    credit_card_number = "4929735477250543"
    check = CreditCheck.new(credit_card_number)
    split_reduced = ["8", "9", "4", "9", "5", "3", "1", "4", "5", "7", "4", "5", "0", "5", "8", "3"]
    assert_equal split_reduced, check.reduce_double_digits
  end

  def test_can_take_integer_array_and_get_sum
    credit_card_number = "4929735477250543"
    check = CreditCheck.new(credit_card_number)
    assert_equal 80, check.reduced_to_sum
  end

  def test_valid_card_if_reduced_sum_divisible_by_10
    credit_card_number = "4929735477250543"
    check = CreditCheck.new(credit_card_number)
    assert_equal "Valid Card", check.valid?
  end

  def test_invalid_card_if_reduced_sum_not_divisible_by_10
    credit_card_number = "8929735477250543"
    check = CreditCheck.new(credit_card_number)
    assert_equal "Invalid Card", check.valid?
  end

end
