
### Challenge 2 - Reverse a string

# Reverse a string in place. In other words, do not create a new string or use other methods on the string 
# such as `reverse`. The goal of the problem is to use a loop and the string accessors to 
# figure out which values to swap for other values. Below is some sample output.

# ```
# Enter a string:
# reverse_me
# em_esrever
# ```

def reverse (string)
	char = String.new(string)

	i = 0
	while i < string.length do
	  string[i] = char[string.length-1-i]
	  i += 1
	end

	puts string
end

reverse("here's a somewhat long sentence that makes no sense whatsoever")

def string_rev(str)
	for i in (0..(str.length/2))
		str[i], str[-i-1] = str[-i-1], str[i]
	end
	puts str
end

string_rev("hello")