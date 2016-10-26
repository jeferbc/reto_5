class Question

  attr_accessor :file, :question, :answer

  def initialize
    @file = open_file
    @question = ""
    @answer = ""
  end

  def get_question
    @question = @file.readline
    @answer = @file.readline
  end

private
  def open_file
    File.open("file.txt", "r")
  end
end

definicion = "Definicion"
prompt = "Adivinar: "
breakline = "\n"
puts breakline
puts "Bienvenido a reto 5, Para jugar, solo ingresa el termino correcto para cada una de las definiciones, Listo? Vamos!"
puts breakline
questions = Question.new
5.times do
  questions.get_question
  puts breakline
  puts definicion
  puts questions.question
  print prompt
  answer = gets.chomp + "\n"
  answer = answer.downcase
  puts breakline
  while (answer != questions.answer)
    puts "Incorrecto!, Trata de nuevo"
    puts breakline
    puts definicion
    puts questions.question
    print prompt
    answer = gets.chomp + "\n"
    answer = answer.downcase
  end
end
questions.file.close
puts "Felicitaciones, has contestado correctamente las preguntas"
