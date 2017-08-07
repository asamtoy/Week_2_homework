require( "minitest/autorun" )
require_relative( "./cavaliers" )

class TestRoster < MiniTest::Test

  def test_team_name
    team = Team.new( "Cavaliers", ["LeBron", "Kyrie", "Kevin"], "Lue", 0)
    assert_equal( "Cavaliers", team.team_name)
  end

  def test_roster
    team = Team.new( "Cavaliers", ["LeBron", "Kyrie", "Kevin"], "Lue", 0)
    assert_equal( ["LeBron", "Kyrie", "Kevin"], team.players)
  end

def test_coach
  team = Team.new( "Cavaliers", ["LeBron", "Kyrie", "Kevin"], "Lue", 0)
  assert_equal("Lue", team.coach)
end

def test_new_coach
  team = Team.new( "Cavaliers", ["LeBron", "Kyrie", "Kevin"], "Lue", 0)
  team.new_coach( "Collins" )
  assert_equal("Collins", team.coach)
end

def test_new_player
  team = Team.new( "Cavaliers", ["LeBron", "Kyrie", "Kevin"], "Lue", 0)
  team.new_player("West")
  assert_equal(["LeBron", "Kyrie", "Kevin", "West"], team.players)
end

def test_player_on_roster
  team = Team.new( "Cavaliers", ["LeBron", "Kyrie", "Kevin"], "Lue", 0)
  # player_on_roster("LeBron")
  assert_equal( true, team.player_on_roster("LeBron") )
end

def test_new_win
  team = Team.new( "Cavaliers", ["LeBron", "Kyrie", "Kevin"], "Lue", 0)
  win = 1
  team.new_win( win )
  assert_equal(1, team.points)
end

def test_new_loss
  team = Team.new( "Cavaliers", ["LeBron", "Kyrie", "Kevin"], "Lue", 0)
  loss = 0
  team.new_loss( loss )
  assert_equal(0, team.points)
end

end
