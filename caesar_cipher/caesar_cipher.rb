def caesar_cipher(string, key)
    letters = [
        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l',
        'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
        'y', 'z'
    ]

    cipher_char_arr = []

    # transmuted the string into an array of characters and iterated over it whilst checking out the characters

    string.split("").each do |char|
        if char.ord.between?(97,122)
            # code for lowercase letters here
            
            shifted_char_index = (letters.index(char) + key ) % letters.length

            cipher_char_arr << letters[shifted_char_index]

        elsif char.ord.between?(65,90)
            # code for uppercase letters here
            
            downcase_char = char.downcase

            shifted_char_index = (letters.index(downcase_char) + key) % letters.length

            cipher_char_arr.push(letters[shifted_char_index].upcase)
        else
            # code for non letters here
            cipher_char_arr << char
        end
    end

    return cipher_char_arr.join("")
end

p caesar_cipher('What a string!', 5)

p caesar_cipher('WHAT A STRING!', 5)