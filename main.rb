#create greeting menu
#If else that gets.to_s if QUIT exit
#If not QUIT 'else' rand (1..9 +(other_answers_generated))
#require_relative 'answers.rb'

# @answers = []
# @question_asked = 0
# class MainMenu
# attr_accessor :name

# def initialize(name)
#   @name = name
# end

def menu
  puts "Welcome to Magic8Group4"
  puts "Ask a Question"
end
def ran_answer
  @question = gets.to_s.strip.downcase
  if @question == "quit"
    exit
   else 
     @number = rand(8 +1) # + @questions_asked)
     case @number
     when 1
       puts "Roll again."
     when 2
       puts "Your dreams will come true."
     when 3
       puts "I'm not so sure."
     when 4
       puts "Most definitely."
     when 5
       puts "No way."
     when 6
       puts "Ask again later."
     when 7
       puts "Could be yes, could be no."
     when 8
       puts "True."
   end
     
     
  end
end



menu
ran_answer