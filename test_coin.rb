require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinchanger < Minitest::Test
	
	def test_pass_zero_cents_returns_empty_hash
		result = get_change(0)
		assert_equal({}, result)
	end

	def test_pass_one_cent_returns_hash_with_one_penny
		result = get_change(1)
		assert_equal({penny: 1}, result)
	end
	def test_pass_five_cents_returns_one_nickel
		result = get_change(5)
		assert_equal({nickel: 1},result)
	end

	def test_pass_six_cents_returns_hash_with_one_nickel_and_penny
		result = get_change(6)
		assert_equal({:nickel =>1, :penny =>1}, result)
	end
	def test_pass_seven_cents_returns_hash_with_one_nickel_and_two_pennies
		result = get_change(7)
		assert_equal({:nickel =>1, :penny =>2}, result)
	end
	def test_pass_ten_cents_return_one_dime
		result = get_change(10)
		assert_equal({:dime => 1}, result)
	end
end