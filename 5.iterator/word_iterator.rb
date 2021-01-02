
words = 'We are the world'

words.scan(/[Pp]¥w*/){|word| puts "The word is #{word}"}