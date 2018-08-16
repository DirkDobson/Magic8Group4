def answers
  [
    "It is certain",
    "It is decidedly so",
    "Without a doubt",
    "Yes definitely",
    "You may rely on it",
    "As I see it, yes",
    "Most likely",
    "Outlook good",
    "Yes",
    "Signs point to yes",
    "Reply hazy try again",
    "Ask again later",
    "Better not tell you now",
    "Cannot predict now",
    "Concentrate and ask again",
    "Don't count on it",
    "My reply is no",
    "My sources say no",
    "Outlook not so good",
    "Very doubtful"
  ]
end

# Calling to array.
def random_answer
  answers[Random.rand(answers.size)]
end


def shake_ball
  Array.new(1 + Random.rand(3)).map{ |e| "[shake]" }.join(" ")
end

def wait_for_user
  question = gets.chomp
  exit(0) if question == "q"
end

def prompt
  "Ask the Magic 8-Ball a question! (q to quit)"
end

if __FILE__ == $0
  puts
  puts prompt
  puts

  while (true)
    wait_for_user
    puts
    puts shake_ball + " " + random_answer
    puts
  end
end