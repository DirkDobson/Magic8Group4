#create greeting menu
#If else that gets.to_s if QUIT exit
#If not QUIT 'else' rand (1..9 +(other_answers_generated))
require_relative 'answers.rb'

@answers = []
@question_asked = 0
class MainMenu


def initialize(name)
  @name = name
end

def menu
  puts "Welcome to Magic8Group4"
  puts "Ask a Question"
end
def ran_answer
  @question = gets.to_s.strip.downcase
  if @question == "quit"
    exit
   else 
     ran_num = 1 + rand(8)# + @questions_asked)
    # @rolled_number
     puts ran_num
  end
end

start = MainMenu.new(start)

start.menu
start.ran_answer