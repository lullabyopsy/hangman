word_to_guess = "Kyoto"
dashed_word = '_' * word_to_guess.length
puts(dashed_word)

loop do
  puts "Type a character to guess: "
  character = gets.chomp
  if word_to_guess.include? character
    word_to_guess.each_char.with_index do |char, index|
      if char == character
        dashed_word[index] = character
      end
    end
  else
    puts "That's not a valid guess!"
    sleep 3
    # \e[2J = Clear visible screen
    # \e[3J = Clear scrollback buffer
    # \e[H  = Move cursor to top-left
    print "\e[2J\e[3J\e[H"
    next
  end
end


