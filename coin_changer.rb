def get_change(amount)
	change = {}
	if amount > 5
	change [:nickel] = 1
	change [:penny]  = amount - 5
	elsif amount == 5
		change [:nickel] = 1
	elsif amount == 1 
		change [:penny] = 1
	end
	change
end