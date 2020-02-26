if("hi hello to the coding world".match(/hi/))
	puts "There is a match"
end

def containVowels(st)
	if(st.match(/[aeiou]/))
	       puts "The string contains vowels"	
	else
		puts "The string does not contains vowels"

	end
end
puts "Enter the string to check vowel in it"
str=gets.chomp
containVowels(str);
puts "Enter the string to check patternin it"
mystr=gets.chomp
a=mystr.split(/[0-9]*/)
b=mystr.split(/[a-z]/)
print a
print b       
count=0
hashp={}

 while count<b.length  do
 	if hashp.include?(a[count+1])
		 hashp[a[count+1]]=hashp[a[count+1]].to_i + b[count].to_i
		 
	 else
		hashp[a[count+1]]=b[count] 
		end
count=count+1
end

hashp.each do |k,val|
	puts "#{k}:#{val}"
	end



