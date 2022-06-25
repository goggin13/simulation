class Plant < ApplicationRecord
  LIFESPAN = 10
  belongs_to :planet

  def description
    "P-#{id}:#{age}"
  end

  def advance!
    if self.age > LIFESPAN
      destroy
    else
      age!
    end
  end

  def age!
    self.age ||= 0
    self.age += 1
    save!
  end
end
