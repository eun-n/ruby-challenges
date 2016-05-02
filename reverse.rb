
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
while i < string.length/2 do
  string[i] = string[string.length-1-i]
  i += 1
end
i = string.length-1
while i > string.length/2 do
  string[i] = char[string.length-1-i]
  i -= 1
end
string[(string.length)/2] = char[(string.length-1)/2]
puts char
puts string
end

reverse("racecarp")