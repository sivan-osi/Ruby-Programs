#Computing "subword" combinations.
class SolveSubWord
  
  def read_input(word,number)
    # to remove unnecessary whitespaces from word
    word.strip!
    
    #check illegal character in word
    unless word.match(/^[[:alpha:]]+$/)
      puts "Illegal character in word"
      return
    end

    #check illegal character in number
    unless number.match(/^\d+$/)
      puts "Illegal character in number"
      return
    end
    #if number is not illegal convert string to integer
    number = number.to_i

    #check if number is greater than length of word
    if word.length < number
      puts "Number is greater than length of word"
      return
    end

    #check if word length is greater than 20
    if word.length > 20
      puts "Length of word #{word} is greater than 20"
      return
    end

    # Output of program
    puts "The word given is #{word} and number is #{number}. The possible subwords are: "
    permutation_array = word.split("").permutation(number)

    permutation_array.each do |array_element|
      puts array_element.join
      puts
    end
  end

end


# Ask for inputs from user until user enters "EOF"
number_of_words_processed = 0
loop do
  puts "Enter the word .."
  word = gets.chomp
  number_of_words_processed += 1 unless word == "EOF"

  if (word == "EOF")
    puts "End of input encountered, #{number_of_words_processed} words processed"
    break
  end
  puts "Enter the number .."
  number = gets.chomp
  solve_subword = SolveSubWord.new
  solve_subword.read_input word,number
end 