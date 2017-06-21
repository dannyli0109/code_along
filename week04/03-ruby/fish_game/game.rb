require "pry"

# blue print
class Fish
  def initialize starting_name
    @name = starting_name
    @health = 100
  end

  def get_name
    return @name
  end

  def get_health
    return @health
  end

  def sleep
    @health += 1
  end

  def health=(new_health)
    @health = new_health
  end
end


binding.pry
