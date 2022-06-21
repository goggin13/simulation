
class Game
  has_many entities
  age

  def update
  end
end


class Entity # STI
  belongs_to Game
  
  x_coordinate
  y_coordinate
  health
  age
  gender
  life_expectency_min
  life_expectency_max

  def update
  end
end

class Plant < Entity
end

class Animal < Entity
end

class Omnivore < Animal
end

class Carnivore < Animal
end
