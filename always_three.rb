puts "Give me a number."

def always_three(number = gets.to_i)
	num_final = ((((number + 5) * 2) - 4) / 2) - number
	puts "Always #{num_final}"
end

always_three