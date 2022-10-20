def caesar_decipher(string, key)
    letters = [
        'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l',
        'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x',
        'y', 'z'
    ]

    decipher_text = ''
    decipher_char_arr = []
    
    string.split("").each do |char|
        if char.ord.between?(97,122)
            # code for lowercase letters here
            char_index = letters.index(char)
    
            new_index = char_index - key
                
            shifted_char = new_index % letters.length
    
            decipher_char_arr << letters[shifted_char]
    
            # cipher_text = cipher_char_arr.join("")
    
        elsif char.ord.between?(65,90)
            # code for uppercase letters here
            downcase_char = char.downcase
    
            char_index = letters.index(downcase_char)
    
            new_index = char_index - key;
    
            shifted_char = new_index % letters.length
    
            decipher_char_arr << letters[shifted_char].upcase
    
            # cipher_text = cipher_char_arr.join("")
        else
            # code for non letters here
            decipher_char_arr << char
        end
    end
    
    # binding.pry
    
    return decipher_text = decipher_char_arr.join("")
end

puts caesar_decipher('Bmfy f xywnsl!', 5)

puts caesar_decipher('BMFY F XYWNSL!', 5)