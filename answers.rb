def answers
  [ 
    "Never.",
    "Ask again later.",
    "No way.",
    "I'm not so sure.",
    "Most defitely.",
    "Don't count on it.",
    "Maybe yes, maybe no.",
    "All signs point to yes.",
    "Keep your fingers crossed.",
    "Most likely.",
    "Probably.",
    "I don't think so.",
    "Most certainly.",
    "True.",
    "False.",
    "Ask again tomorrow.",
    "Yes.",
    "No."
   ] 
 end
 
 def random_answer
   answers[Random.rand(answers.size)]
 end
 
 def shakes
   Array.new(1 + Random.rand(3)).map{ "Shake..."}.join(" ")
 end
 
 def user_question
   question = gets.chomp
   if question == "no thanks"
     puts
     puts "Talk to you later!"
     puts
     exit
   elsif question =="love"
    puts "Leave an answer."
    answers << gets.to_s
   end
   
 end
 
 def prompt
   puts "Ask the Magic 8 Ball a question. Say, 'no thanks,' to leave."
 end
 
 if __FILE__ == $0
   puts
   puts prompt
   puts
 
   while (true)
     user_question
     puts
     puts shakes + " " + random_answer
     puts
     puts "Ask another question. Or just say, 'no thanks'."
     puts
   end
 end

 shakes
 user_question
 prompt