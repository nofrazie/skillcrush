require 'faker'
(1..50).each do |i|
  Person.create(first_name: Faker::Name.first_name, last_name: Faker::Name.last_name, birthdate: Faker::Date.between(60.years.ago, 18.years.ago))
end
