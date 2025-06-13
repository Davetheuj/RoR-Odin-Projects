#--PROJECT DESCRIPTION--
#Implement a method #substrings that takes a word as the first argument and 
#then an array of valid substrings (your dictionary) as the second argument. 
#It should return a hash listing each substring (case insensitive) 
#that was found in the original string and how many times it was found.

def substrings(containing_string, strings)
  returnHash = Hash.new(0)
  strings.each do |element|
    if containing_string.include?(element)
      returnHash[element] += 1
    end
  end
  returnHash
end

puts substrings("Hello there partner how are you doing?", ["Hello", "h", "cat", "you"])