class Animal < ApplicationRecord
  LIFESPAN = 100
  belongs_to :planet

  def description
    "A-#{id}:#{age}"
  end

  def advance!
    if self.age > LIFESPAN
      destroy
    else
      move!
      age!

      save!
    end
  end

  def move!
    x_options = [0]
    x_options << -1 if self.column > 0
    x_options << 1 if self.column < planet.columns
    x_movement = x_options.shuffle.first
    self.column += x_movement

    y_options = [0]
    y_options << -1 if self.row > 0
    y_options << 1 if self.row < planet.rows
    y_movement = y_options.shuffle.first
    self.row += y_movement
  end

  def age!
    self.age ||= 0
    self.age += 1
  end
end
