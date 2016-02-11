# Get the number for the birth month and store it in the birthdate array
require "Date"
puts "What is your birth date? (Format July 3, 1988)"
birthdate = gets.chomp
sum = 0
Date.parse(birthdate).strftime("%m%d%Y").split("").each do |num|
	sum += num.to_i
end

while sum.to_s.length == 2
	sum2 = 0
	sum.to_s.split("").each do |i|
		sum2 += i.to_i
	end
	sum = sum2
end

numerology = {
	1 => "One is the leader. The number one indicates the ability to stand alone, and is a stong vibration. Ruled by the Sun.",
	2 => "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon.",
	3 => "Number three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter.",
	4 => "This is the worker. Practical, with a love of detail, fours are trustworthy, hard-working, and helpful. Ruled by Uranus.",
	5 => "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury.",
	6 => "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus.",
	7 => "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune.",
	8 => "This is the manager. Number eight is a strong, successful, and material vibration. Ruled by Saturn.",
	9 => "This is the teacher. Number nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
}

puts "Your numerology number is #{sum}"
puts numerology[sum]
