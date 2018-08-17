require 'colorize'

@new_answers = []

@answers =
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

def random_answer
  all_answers = @answers + @new_answers
  all_answers.sample
end

def shakes
  Array.new(1 + Random.rand(3)).map{ "Shake..." }.join(" ")
end

def add_answer
  puts
  puts "Type your own answer."
  puts
  new_answer = gets.strip
  @new_answers << new_answer
end

def print_answers
  puts
  puts @answers + @new_answers
end 

def reset_answer
  @new_answers.clear
end

def user_question
  question = gets.strip.downcase
  case question
  when 'add answer'
    add_answer
  when 'reset answers'
    reset_answer
  when 'show answers'
    print_answers
  when "no thanks"
    puts
    puts "Talk to you later!"
    puts
    exit
  end
end

def prompt
  puts "Ask the Magic 8 Ball a question. Say, 'no thanks,' to leave.".colorize(:cyan)
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
    puts "Ask another question. Or just say, 'no thanks'.".colorize(:cyan)
    puts
  end
end