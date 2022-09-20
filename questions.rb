class Questions

  def initialize
    @number_1 = rand(1..20)
    @number_2 = rand(1..20)
  end

  def question_answer(current_player)
  
    puts question = "#{current_player}: What does #{@number_1} plus #{@number_2} equal?"
    print "> "

    answer = gets.chomp.to_i == @number_1 + @number_2
    puts answer  ? "#{current_player}: Bingo!" : "#{current_player}: No way!"
    return answer
  end

end