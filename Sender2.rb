
	def test_pass_one_cent_returns_hash_with_one_penny
		result = get_change(1)
		assert_equal({penny: 1}, result)
	end

	def test_pass_two_cents_returns_hash_with_two_pennies
		result = get_change(2)
		assert_equal({penny: 1}, result)
	end

	def test_pass_five_cents_returns_one_nickel
		result = get_change(5)
		assert_equal({nickel: 5},result)
	end

	def test_pass_six_cents_returns_hash_with_one_nickel_and_penny
		result = get_change(6)
		assert_equal({:nickel =>5, :penny =>1}, result)
	end

	def test_pass_seven_cents_returns_two_pennies_one_nickel
		result = get_change(7)
		assert_equal({:nickel =>5, :penny =>1}, result)
	end

	def test_pass_ten_cents_return_one_dime
		result = get_change(10)
		assert_equal({:dime => 10}, result)
	end

	def test_pass_twenty_five_cents_returns_one_quarter
		result = get_change(25)
		assert_equal({:quarter => 25}, result)
	end

	def test_pass_fifty_cents_returns_two_quarters
		result = get_change(50)
		assert_equal({:quarter =>25}, result)
	end

	def test_pass_ninety_three_cents_returns_three_quarters_one_dime_one_nickel_three_pennies
		result get_change(93)
		assert_equal({:quarter =>25, :dime =>10, :nickel => 5, :penny => 1}, result)
	end
end