
class Team

  attr_reader :team_name, :players
  attr_accessor :coach, :points

  def initialize(team_name, players, coach)
    @team_name= team_name
    @players= players
    @coach= coach
    @points= 0
  end

  def add_new_player(name)
    @players.push(name)
  end

  def check_player_in_team(player_name)
    players.any?{|player| player==player_name}
  end

  def add_points(win)
    @points+=1 if win == true
  end

end
