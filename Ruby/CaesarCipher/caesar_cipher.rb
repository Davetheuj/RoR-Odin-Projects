def run_cipher(entry, shift_factor = 5)
  chars = entry.chars
  range = 'z'.ord - 'a'.ord
  upcase_pivot = 'A'.ord
  lowercase_pivot = 'a'.ord
  chars.map! do |char|
    if char.ord.between?(upcase_pivot-1, upcase_pivot + range + 1)
      #character is uppercase
      shiftedOrd = char.ord + shift_factor - upcase_pivot
      shiftedOrd = (shiftedOrd % (range + 1)) + upcase_pivot
      shiftedOrd.chr
    elsif char.ord.between?(lowercase_pivot-1, lowercase_pivot + range + 1)
      shiftedOrd = char.ord + shift_factor - lowercase_pivot
      shiftedOrd = (shiftedOrd % (range + 1)) + lowercase_pivot
      shiftedOrd.chr   
    else
      char
    end
  end
  chars.join
end

puts "Please enter a string to cipher!"
entry = gets

puts run_cipher(entry)

