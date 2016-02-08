# Get the number for the birth month and store it in the birthdate array
puts "What month where you born in? (Format July 3, 1988)"
birthdate2 = gets.chomp.split(" ")
month = birthdate2[0].capitalize
day 	= birthdate2[1].chop!
year 	= birthdate2[2]


def birth_path(month, day, year)
	$birthdate = []

	case month
		when "January" then $birthdate[0] = 1
		when "February" then $birthdate[0] = 2
		when "March" then $birthdate[0] = 3
		when "April" then $birthdate[0] = 4
		when "May" then $birthdate[0] = 5
		when "June" then $birthdate[0] = 6
		when "July" then $birthdate[0] = 7
		when "August" then $birthdate[0] = 8
		when "September" then $birthdate[0] = 9
		when "October" then $birthdate[0] = 10
		when "November" then $birthdate[0] = 11
		when "December" then $birthdate[0] = 12
		else puts "You made an error in entering your birth month, please enter it again."
	end

	$birthdate[1] = day.to_i
	$birthdate[2] = year.to_i

	# Check to see if the users birth month is after october and if it is separate the two digits and add them to the $numbers variable
	if $birthdate[0] < 10
		$number = $birthdate[0]
	elsif $birthdate[0] == 10
		$number = 1
	elsif $birthdate[0] == 11
		$number = 1 + 1 
	elsif $birthdate[0] == 12
		$number = 1 + 2
	end

	# Check to see if the birth day is greater than 10 and if it is separate the numbers into two digits and add them to the $number variable
	if $birthdate[1].to_i < 10 
		$number += $birthdate[1].to_i
	elsif $birthdate[1].to_i > 10
		$numArr = $birthdate[1].split("")
		$number = $number + $numArr[0].to_i + $numArr[1].to_i
	end

	# Get the birth year separate the values into 4 digits and add them to the $number variable
	yearArr = $birthdate[2].to_s.split("")
	$number = $number + yearArr[0].to_i + yearArr[1].to_i + yearArr[2].to_i + yearArr[3].to_i
	# puts "Your initial number is #{$number}"

	# Check to see if your value is two digits, if it is separate the values and add them storing the result in the $number variable
	if $number > 9
		numArr = $number.to_s.split("")
		$number = numArr[0].to_i + numArr[1].to_i
	end

	# Do the check again because you only need to run it twice being that the worst case scenario is 99 which would result in 18 which would be 9 
	if $number > 9
		numArr = $number.to_s.split("")
		$number = numArr[0].to_i + numArr[1].to_i
	end

	return $number
end

birth_path(month, day, year)

# Use a case statement to display your final number and the numerology output		
def statement(number)
	case number
	when 1
		$num = "Your numerology number is #{number}"
		$state = "One is the leader. The number one indicates the ability to stand alone, and is a stong vibration. Ruled by the Sun."
	when 2
		$num = "Your numerology number is #{number}"
		$state = "This is the mediator and peace-lover. The number two indicates the desire for harmony. It is a gentle, considerate, and sensitive vibration. Ruled by the Moon."
	when 3
		$num = "Your numerology number is #{number}"
		$state = "Number three is a sociable, friendly, and outgoing vibration. Kind, positive, and optimistic, Three’s enjoy life and have a good sense of humor. Ruled by Jupiter."
	when 4
		$num = "Your numerology number is #{number}"
		$state = "This is the worker. Practical, with a love of detail, fours are trustworthy, hard-working, and helpful. Ruled by Uranus."
	when 5
		$num = "Your numerology number is #{number}"
		$state = "This is the freedom lover. The number five is an intellectual vibration. These are ‘idea’ people with a love of variety and the ability to adapt to most situations. Ruled by Mercury."
	when 6
		$num = "Your numerology number is #{number}"
		$state = "This is the peace lover. The number six is a loving, stable, and harmonious vibration. Ruled by Venus."
	when 7
		$num = "Your numerology number is #{number}"
		$state = "This is the deep thinker. The number seven is a spiritual vibration. These people are not very attached to material things, are introspective, and generally quiet. Ruled by Neptune."
	when 8
		$num = "Your numerology number is #{number}"
		$state = "This is the manager. Number eight is a strong, successful, and material vibration. Ruled by Saturn."
	when 9
		$num = "Your numerology number is #{number}"
		$state = "This is the teacher. Number nine is a tolerant, somewhat impractical, and sympathetic vibration. Ruled by Mars."
	end
end

statement($number)

puts "#{$num}\n#{$state}"

