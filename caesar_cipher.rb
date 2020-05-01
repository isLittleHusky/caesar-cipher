require "pry"

def caesar_cipher(string, shift)

  cipher = ""

  for string.split("").each do |char|
  	p(char)

  	if char.between?("a","z")
  		if (char[0].ord + shift) > 90
  			cipher += (char[0].ord + shift - 90 + 65).chr
  		else
  			cipher += (char[0].ord + shift).chr
  		end

  	elsif char.between?("A","Z")
  		if (char[0].ord + shift) > 122
  			cipher += (char[0].ord + shift - 122 + 97).chr
  		else
  			cipher += (char[0].ord + shift).chr
  		end

  	else
  		cipher += char
  	end
  end
  
  return cipher
end

caesar_cipher("What a string!", 5)