class Players
  attr_accessor :player_name, :player_lives

  def initialize(player_name, player_lives)
    @player_name = player_name
    @player_lives = player_lives
  end

end