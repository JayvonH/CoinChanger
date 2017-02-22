require "minitest/autorun"
require_relative "coin_changer.rb"

class TestCoinchanger < Minitest::Test
	
	def test_pass_zero_cents_returns_empty_hash
		result = get_change(0)
		assert_equal({}, result)
	end
end