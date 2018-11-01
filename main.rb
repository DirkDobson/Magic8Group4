
@answers = [
  "Roll again.", 
  "Your dreams will come true.",
  "I'm not so sure.", 
  "Most definitely.", 
  "No way.", 
  "Ask again later.", 
  "Could be yes, could be no.", 
  "True.", 
  "No, No, No, No...",
  "Yeah, Yeah, Yeah!!!",
]

def menu
  puts "--------------"
  puts "Welcome"
  puts "--------------"
  puts "Ask a question or type QUIT to exit"
  puts "--------------"
  ran_answer
end

def ran_answer
  @question = gets.to_s.strip.downcase
  if @question == "quit"
    exit
   else 
     @number = rand(8) 
     case @number
     when 0
       puts "--------------"
       puts "Roll again."
       puts "--------------"
       menu
     when 1
       puts "--------------"      
       puts "Your dreams will come true."
       puts "--------------"
       menu
     when 2
       puts "--------------"
       puts "I'm not so sure."
       puts "--------------"
       menu
     when 3
       puts "--------------"
       puts "Most definitely."
       puts "--------------"
       menu
     when 4
       puts "--------------"
       puts "No way."
       puts "--------------"
       menu
     when 5
       puts "--------------"
       puts "Ask again later."
       puts "--------------"
       menu
     when 6
       puts "--------------"
       puts "Could be yes, could be no."
       puts "--------------"
       menu
     when 7
       puts "--------------"
       puts "True."
       puts "--------------"
       menu
   end  
  end
end



menu
