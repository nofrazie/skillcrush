puts "Describe the weather in 1 word."
weather = gets.chomp

case weather
when "sunny" then puts "It's nice outside. Get out and enjoy your day."
when "cloudy" then puts "The weather is not bad today. Don't expect to get a tan at the beach."
when "foggy" then puts "This is classic San Francisco weather."
when "rainy" then puts "I think it's a good day to stay inside and read a book."
else puts "I don't know what the weather is like today."
end