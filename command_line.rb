class CommandLine
  def initialize
    @users = {"legatux" => "pass123"}
    @text
  end

  def take_input
    gets.chomp.downcase
  end

  def take_text
    @text = gets.chomp
  end

  def word_counter
    @text.split(" ").count
  end

  def login?(username, password)
    @users[username] == password
  end

  def start
    puts "username"
    print " > "
    username = take_input
    puts "password"
    print" > "
    password = take_input
    if login?(username, password)
      puts "Write your text"
      take_text
      words = word_counter
      puts "Your text have #{words} words"
    else
      puts "invalid credentials"
      puts " bye"
    end
  end
end

CommandLine.new.start
