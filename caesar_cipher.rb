def caesar(string, shift_factor)
	alphabet = Array("a".."z")
	new_alph = alphabet.rotate(shift_factor)
	new_str = string.downcase.split("")
	caesar_string = []
	new_str.each do |i|
		print i
		if !alphabet.include?(i)
			caesar_string.push(i)
		else
			equals = alphabet.index(i)
			caesar_string.push(new_alph[equals])
		end
	end
	caesar_string
end

caesar_string = caesar("What a string!", 5)

print caesar_string.join.capitalize!
