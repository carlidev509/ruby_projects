# require "pry-byebug"

def caesar_cipher(string, key)
    letters = [
        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l',
        'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
        'y', 'z'
    ]

    # puts letters.length
    cipher_text = ''
    cipher_char_arr = []

    string.split("").each do |char|
        if char.ord.between?(97,122)
            # code for lowercase letters here
            char_index = letters.index(char)

            new_index = char_index + key
            
            shifted_char = new_index % letters.length

            cipher_char_arr << letters[shifted_char]

            # cipher_text = cipher_char_arr.join("")

        elsif char.ord.between?(65,90)
            # code for uppercase letters here
            downcase_char = char.downcase

            char_index = letters.index(downcase_char)

            new_index = char_index + key;

            shifted_char = new_index % letters.length

            cipher_char_arr << letters[shifted_char].upcase

            # cipher_text = cipher_char_arr.join("")
        else
            # code for non letters here
            cipher_char_arr << char
        end
    end

    # binding.pry

    return cipher_text = cipher_char_arr.join("")
end

p caesar_cipher('What a string!', 5)

# p caesar_cipher('WHAT A STRING!', 5)