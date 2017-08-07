# Make a class to represent a Team that has the
# properties Team name (String), Players (Array of
# strings) and a Coach (String).

# Add a points property into your class that starts
# at 0.

class Team
# Refactor the class to use attr_reader or
# attr_accessor instead of your own getter
# and setter methods.
attr_reader( :team_name, :players, :coach, :points )
attr_writer( :team_name, :players, :coach, :points )

  def initialize( team_name, players, coach, points )
  @team_name = team_name
  @players = players
  @coach = coach
  @points = points
  end

# def team_name
#   return @team_name
# end
#
# def players
#   return @players
# end
#
# def coach
#   return @coach
# end

  def new_coach( new_coach )
    @coach = new_coach
  end

  def new_player(new_player)
    players.push( new_player )
  end

  def player_on_roster( player_check )
    for player in players
      if player == player_check
        return true
      else
        return false
      end
    end
  end

# Create a method that takes in whether the team
# has won or lost and updates the points property
# for a win.
  def new_win( new_point )
    win = 1
    @points = points + win.to_i
  end

  def new_loss( no_new_points )
    loss = 0
    @points = points + loss.to_i
  end


end
