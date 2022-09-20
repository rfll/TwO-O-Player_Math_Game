class Players
  attr_accessor :player_name, :player_lives

  def initialize(player_name, player_lives)
    @player_name = player_name
    @player_lives = player_lives
  end

  def player_has_lost

    if @player_lives == 0
      return true
    else
      return false
    end

  end
end