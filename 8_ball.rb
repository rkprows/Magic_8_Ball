
def array
	@answer = [ "It is certain", "Without a doubt", "Yes, definitely!", "You can count on it!", "Don't count on it", "My sources say no", "Not a snowball's chance in hell." ]
end

def greeting
	puts "\nWelcome to the Ruby Magic Eight Ball. Please ask a yes or no question. Or type quit to exit."
	ask
end

def ask
	user_input = gets.strip.downcase
	if user_input == 'quit'
		puts "Thanks for asking the Magic Eight Ball. Please play again!"
		exit (0)
	else 
		question(user_input)
	end
end

def question(user_input)
	puts "\nThe Magic Eight Ball says:\n\n"
	if user_input.include?('?')
		puts @answer.sample
	elsif user_input == 'quit'
		puts "Thanks for playing."
		exit (0)
	elsif user_input == 'add answers'
		puts "What answer would you like to add?"
		user_input = gets.strip
		@answer << user_input
		puts "#{user_input} has been successfully added to response pool."
	elsif user_input == 'print answers'
		puts "All possible responses are: #{@answer}"
	elsif user_input == 'reset answers'
		array
		puts "Answers have been reset."
	else
		puts "I'm sorry. I didn't catch that. Please ask again!"
		ask
	end
end


array
while true
	greeting 
end
