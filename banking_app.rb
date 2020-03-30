# Write a program to implement a simple bank account. 

def banking_app
	# Your code here.
	
	password = "iampoor"
	puts "Welcome to the banking app"
	puts "Enter your password before proceeding:"
	password_entered = gets.chomp
	password_attempts = 1
	
	def access_granted
		account_balance = 0
		while true
			puts "What would you like to do? (Options are: balance, deposit, withdraw, exit)" 
			to_do = gets.chomp
			if to_do == "balance"
				puts "Your balance is $#{account_balance}"
			elsif to_do == "deposit"
				puts "How much would you like to deposit?"
				deposit = gets.chomp
				account_balance += deposit.to_i
				puts "Your new balance is $#{account_balance}"
			elsif to_do == "withdraw"
				puts "How much would you like to withdraw?"
				withdrawal = gets.chomp
				account_balance -= withdrawal.to_i
				
				if account_balance < 0
					account_balance += withdrawal.to_i
					puts "You can't overdraw your acount. You only have $#{account_balance}."
				else
				puts "Your new balance is $#{account_balance}"
				end
				
			elsif to_do == "exit"
				break
	
			else
				puts "Invalid selection!"
			end
			sleep(1)
		end	
	end
	
	if password_entered != password
		while password_attempts < 3
			puts "Retry password"
			password_attempts += 1
			password_entered = gets.chomp
			if password_entered == password
				access_granted
				break
			end
		end
		if password_attempts == 3
			puts "To many password attempts: ACCESS DENIED"	
		end	
	else
		access_granted

	end	
	puts "Thank you for banking with us."
end

banking_app