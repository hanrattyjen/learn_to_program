def roman_to_integer(roman)
	 digit_values = {
	 	'i' => 1,
	 	'v' => 5,
	 	'x' => 10,
	 	'l' => 50,
	 	'c' => 100,
	 	'd' => 500, 
	 	'm' => 1000
	 }
	total = 0
	prev = 0
	index = roman.length - 1  

	while index >= 0
		c = roman[index].downcase
		index = index - 1
		val = digit_values[c]
		if !val
			puts "This is not a valid roman numeral!"
			return
		end
		if val < prev
			val = val * -1
		else
			prev = val
		end
		total = total + val
	end
	total
end
				


# puts roman_to_integer("CXX")
