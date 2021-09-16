#getting user name
puts "What is your name?"
name = ""
name = gets

#getting user age
puts "Hi #{name}. How old are you?"
years = 0
years = gets
years.class

#calculating user age
#10 years
age_10 = years.to_i + 10
puts "In 10 years you will be: #{age_10}."

#20 years
age_20 = years.to_i + 20
age_20.to_s
puts "In 20 years you will be: #{age_20}."

#30 years
age_30 = years.to_i + 30
age_30.to_s
puts "In 30 years you will be: #{age_30}."

#40 years
age_40 = years.to_i + 40
age_40.to_s
puts "In 40 years you will be: #{age_40}."

