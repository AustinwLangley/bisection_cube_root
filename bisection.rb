
print "What number would you like to find the cube root of? "
cube = gets.to_f
print "How close do you want to get?"
epsilon = gets.to_f

num_guesses = 0

if cube < 1
  low = cube
  high = cube * 2.0
else
  low = 0
  high = cube  
end

guess = (high + low)/2.0

while (guess**3 - cube).abs >= epsilon do
  if guess**3 < cube  
    low = guess 
  else
    high = guess
    end
  guess = (high + low)/2.0
  num_guesses += 1
  puts "#{guess}"
end

puts "Number of guesses #{num_guesses}."
puts "Estimating #{guess} for the cube root of #{cube}."
puts "Due to epsilon of #{epsilon}."



