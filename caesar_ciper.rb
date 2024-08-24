def caesar_cipher(string, factor)
  # convert string to array
  string_array = string.split("")
  # convert array to ascii values
  string_array.map! {|letter| letter.ord}
  # shift x #s
  string_array.map! do |letter|
    if letter.between?(65, 90) 
      ((letter - 65 + factor) % 26) + 65
    elsif letter.between?(97, 122)
      ((letter - 97 + factor) % 26) + 97
    else
      letter
    end
  end
  # convert back to chars(array)
  string_array.map! {|letter| letter.chr}
  # stringify array
  ciphered = string_array.join
  # return string
  return ciphered
end


puts caesar_cipher("What a string!", 5)

