require('minitest/autorun')
require('minitest/reporters')
require('pry')
require_relative('../team')
Minitest::Reporters.use!(Minitest::Reporters::SpecReporter.new)

class TeamTesting < MiniTest::Test

  def test_get_coach
    players= ["Mairi", "Steven", "David", "Ratthew"]
    team1 = Team.new("The Rats", players, "Bob")
    assert_equal("Bob", team1.coach)
  end

  def test_get_team_name
    players= ["Mairi", "Steven", "David", "Ratthew"]
    team1 = Team.new("The Rats", players, "Bob")
    assert_equal("The Rats", team1.team_name)
  end

  def test_get_players
    players= ["Mairi", "Steven", "David", "Ratthew"]
    team1 = Team.new("The Rats", players, "Bob")
    assert_equal(["Mairi", "Steven", "David", "Ratthew"], team1.players)
  end

  def test_set_coach
    players= ["Mairi", "Steven", "David", "Ratthew"]
    team1 = Team.new("The Rats", players, "Bob")
    team1.coach= "Roland Rat"
    assert_equal("Roland Rat", team1.coach)
  end

  def test_add_players
    players= ["Mairi", "Steven", "David", "Ratthew"]
    team1 = Team.new("The Rats", players, "Bob")
    team1.add_new_player("John")
    assert_equal(["Mairi", "Steven", "David", "Ratthew", "John"], team1.players)
  end

  def test_check_player_in_team_true()
    players= ["Mairi", "Steven", "David", "Ratthew"]
    team1 = Team.new("The Rats", players, "Bob")
    assert_equal(true, team1.check_player_in_team("Mairi"))
  end

  def test_check_player_in_team_false()
    players= ["Mairi", "Steven", "David", "Ratthew"]
    team1 = Team.new("The Rats", players, "Bob")
    assert_equal(false, team1.check_player_in_team("Rutherford"))
  end

  def test_adding_points_when_win
    players= ["Mairi", "Steven", "David", "Ratthew"]
    team1 = Team.new("The Rats", players, "Bob")
    win = true
    team1.add_points(win)
    assert_equal(1, team1.points)
  end

  def test_adding_points_when_lose
    players= ["Mairi", "Steven", "David", "Ratthew"]
    team1 = Team.new("The Rats", players, "Bob")
    win = false
    team1.add_points(win)
    assert_equal(0, team1.points)
  end

end
