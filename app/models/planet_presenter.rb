class PlanetPresenter
  class PlanetCell
    attr_reader :row, :column, :entities

    def initialize(row, column, entities)
      @entities = entities
      @row = row
      @column = column
    end
  end

  attr_reader :cells

  def initialize(planet)
    @planet = planet
    @entities = @planet.entities
    @cells = []

    @planet.rows.times do |r|
      @cells[r] = []
      @planet.columns.times do |c|
        cell_entities = @entities.select do |e|
          e.column == c && e.row == r
        end

        @cells[r][c] = PlanetCell.new(r, c, cell_entities)
      end
    end
  end

  def cell(r, c)
    @cells[r][c]
  end
end
