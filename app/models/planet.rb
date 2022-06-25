class Planet < ApplicationRecord
  has_many :plants
  has_many :animals

  def entities
    plants.all + animals.all
  end

  def update!
    self.age += 1
    entities.each do |entity|
      entity.advance!
    end
    new_growth(0.01)
    save!
  end

  def iterate
    rows.times do |r|
      columns.times do |c|
        yield(r, c)
      end
    end
  end

  def new_growth(probability)
    iterate do |r, c|
      if SecureRandom.rand <= probability
        puts "creating plant at (#{r},#{c})"
        plants.create!(row: r, column: c, age: 0)
      end
    end
  end

  def initialize!
    plants.destroy_all
    new_growth(0.1)
    iterate do |r, c|
      if SecureRandom.rand <= 0.1
        puts "creating Animal at (#{r},#{c})"
        animals.create!(row: r, column: c, age: 0)
      end
    end
  end
end
