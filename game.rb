class Game

  def initialize
    @player_1 = Players.new('Player 1', 3)
    @player_2 = Players.new('Player 2', 3)
    @question_player = @player_1
    @answer_player = @player_2
  end

  def change_player
    if @question_player == @player_1
      @question_player = @player_2
      @answer_player = @player_1
    else 
      @question_player = @player_1
      @answer_player = @player_2
    end
  end  


  def start
  
    while true do
      # generate new question
      question = Questions.new

      # ask the question and capture response - boolean
      correct = question.question_answer(@question_player.player_name)
      
      # update the current player score
      unless correct
        @answer_player.player_lives -= 1
      end 

      puts "The score is: #{@question_player.player_name}: #{@question_player.player_lives}/3 vs #{@answer_player.player_name}: #{@answer_player.player_lives}/3"

      # check win condition aka player score = 0
      # if no player has won change the player
      if @answer_player.player_has_lost
        puts "#{@question_player.player_name} wins with a score of #{@question_player.player_lives}/3"
        puts "------Game Over------"
        puts "Goodbye!"
        break
      else
        puts "------New Turn------"
        self.change_player
      end
      
    end
    
  end

end