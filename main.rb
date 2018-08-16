#create greeting menu
#If else that gets.to_s if QUIT exit
#If not QUIT 'else' rand (1..9 +(other_answers_generated))
require ' answers.rb'

@answers = []

class MainMenu
end

def initialize(name)
  @name = name
end

def menu
  puts "Welcome to Magic8Group4"
  puts "Ask a Question"
  question = gets.to_s.strip.downcase
  if question == quit
    exit
  else rolled_number
end

