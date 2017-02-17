#encrypting process- each character moves forward one letter in alphabet"
def encrypt (code)

	counter = 0
	new_code = ""
	characters = "abcdefghijklmnopqrstuvwxyz"

  while counter < code.length
 	if code[counter] == "z"
  		new_code += "a"
  
	else
  	new_code = new_code + code[counter].next

  # new_code += characters[characters.index(code[counter]) + 1]
  	end
  	counter += 1

  end
   
	p new_code

end


#decrypting process- each character moves backwards one letter in alphabet"
# this method does not need an edge-code fix
def decrypt(code)

	counter = 0
	new_code = ""
	characters = "abcdefghijklmnopqrstuvwxyz"


  	while counter < code.length
   
	  new_code += characters[characters.index(code[counter]) - 1] 
	  counter += 1

  	end
   
	p new_code

end

### Release 3 ### 

# encrypt("abc")
# encrypt("zed")
# decrypt("bcd")
# decrypt("afe")
# encrypt("swordfish")
# decrypt("swordfish")


### Release 4 ###

# encrypt(decrypt("swordfish"))

# "rvnqcehrg"
# "swordfish"

# Intitally we were getting this error:
	###`encrypt': undefined method `length' for nil:NilClass (NoMethodError)

# which lead us to think the error was 
# with .length in each of our methods.
# We googled and tested ideas in IRB, but
# we couldn't figure out what was wrong.

# Turns out the error was coming from using 
# "puts" instead of "p" inside of our methods.





### Release 5 ###
#interface to ask user if they want to encrypt or decrypt


# Gets input from user	
puts "Do you want to encrypt or decrypt?"
process = gets.chomp

# Determines if user selected Encrypt or Decript, 
# then gets password input from user
	if process == "encrypt"
   		puts "Please enter your password."
		code = gets.chomp
		encrypt(code)
# 
   elsif process == "decrypt"
	 	puts "Please enter your password."
	 	code = gets.chomp
	 	decrypt(code)
 
	else 
  		puts "inupt unknown"
 
end




