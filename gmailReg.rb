puts "Enter the gmail and mob   to check whether it is valid or not"
mob=gets.chomp
mail=gets.chomp


if(mob.match(/[0-9]+{10}/))
	puts "Valid mob no."
else
	puts "Invalid mob no "
end

if(mail.match(/^[a-z]+\d*+@\w+\.com$/))
	puts "mail is valid"
else
	puts "mail is invalid"
end
