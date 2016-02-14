require 'weatherboy'

puts "Please enter your zipcode"
location = gets.chomp.to_i

def current_weather(location)
  weather = Weatherboy.new(location)
  current_w = weather.forecasts

  current_w.each do |w|
    puts w.title
    puts w.text
  end
end

current_weather(location)
