class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def create
    @planet = Planet.new
    ### NAME ###
    @planet.name = Planet::names.sample + ' ' + Planet::names.sample

    ### ATMOSPHERE ###
    eighty = [true, true, true, false, false]
    @planet.atmosphere = eighty.sample

    ### RESOURCES ###
    amount = [1, 2, 3].sample
    resources = ['Iron', 'Copper', 'Coal'].sample(amount)
    @planet.resources += resources

    if @planet.save
      redirect_to planets_path
    else
      redirect_to planets_path
    end
  end
end
