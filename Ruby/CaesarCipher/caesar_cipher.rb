# frozen_string_literal: true

RANGE = 'z'.ord - 'a'.ord
UPCASE_PIVOT = 'A'.ord
LOWERCASE_PIVOT = 'a'.ord

def run_cipher(entry, shift_factor = 5) # rubocop:disable Metrics/AbcSize,Metrics/MethodLength
  chars = entry.chars
  chars.map! do |char|
    if char.ord.between?(UPCASE_PIVOT - 1, UPCASE_PIVOT + RANGE + 1)
      # character is uppercase
      shifted_ord = char.ord + shift_factor - UPCASE_PIVOT
      shifted_ord = (shifted_ord % (RANGE + 1)) + UPCASE_PIVOT
      shifted_ord.chr
    elsif char.ord.between?(LOWERCASE_PIVOT - 1, LOWERCASE_PIVOT + RANGE + 1)
      shifted_ord = char.ord + shift_factor - LOWERCASE_PIVOT
      shifted_ord = (shifted_ord % (RANGE + 1)) + LOWERCASE_PIVOT
      shifted_ord.chr
    else
      char
    end
  end
  chars.join
end

puts 'Please enter a string to cipher!'
entry = gets

puts run_cipher(entry)
