def get_change(amount)
	change = {}
	coins = {quarter: 25, dime: 10, nickel: 5, penny: 1}

	coins.each do |coin, value|
		if amount >= value
			number_coins = amount / value
			change [coin] = number_coins
			amount -= value +
			number_coins
		end
	end
	change
end





change = {}
	coins = {quarter:, dime:, nickel:, penny:}

	if amount >= 25
		number_coins = amount /25
	change [:quarter] = number_coins 
	end
	if amount >= 10
		number_coins = amount / 10
	change [:dime] = number_coins
		amount -= 10 = number_coins
	end
	if amount >= 5
		change [:nickel] = 5
		amount -= 5
	end
	if amount >= 1
		change [:penny] = amount
	end
	change
end





change = {}
	if amount > 10
	change [:dime] = 1
	change [:penny]  = amount - 10
	elsif amount == 10
		change [:dime] = 1
	elsif amount > 5
		change [:nickel] = 1
		change [:penny] = amount - 5
	end
	change
end