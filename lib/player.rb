class Player
attr_reader :name, :points

DEFAULT_POINTS = 60
  def initialize(name, points = DEFAULT_POINTS)
      @name = name
      @points = points
  end

  def reduce_points
    @points -= 10
  end
end
