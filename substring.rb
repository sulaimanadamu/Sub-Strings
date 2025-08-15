def substrings(word, normal_case_dictionary)
    word_count = {}
    word = word.downcase
    dictionary = normal_case_dictionary.map(&:downcase)

    dictionary.each do |selected_word| 
        count = word.scan(selected_word).length
        unless count == 0
            word_count[selected_word] = count
        end
    end

    # dictionary.each do | selected_word | 
    #     # are all of the character of the selected word member of the given word
    #     subset = selected_word.chars.all? { |dic_word| word.chars.include?(dic_word) }
    #     # create hash of count the number of occurrence of word in dictionary.
    #     if subset
    #         word_count[selected_word] = word.scan(selected_word).length
    #     end
    # end
    return word_count

end

dictionary = ["below","down","go","going","horn","how","howdy","it","i","low","own","part","partner","sit"]
  
p substrings("Howdy partner, sit down! How's it going?", dictionary)
