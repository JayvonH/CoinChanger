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
end