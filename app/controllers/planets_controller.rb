class PlanetsController < ApplicationController
  def show
    @planet = Planet.find(params[:id])
    @planet.update!

    @planet_presenter = PlanetPresenter.new(@planet)
  end
end
