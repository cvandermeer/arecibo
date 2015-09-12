class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def create
    @planet = Planet.new
    ### NAME ###
    @planet.name = Planet::names.sample + ' ' + Planet::names.sample +
    ' ' + (RomanNumerals.to_roman(Planet.where(name: @planet.name).count + 1))

    ### ATMOSPHERE ###
    eighty = [true, true, true, false, false]
    @planet.atmosphere = eighty.sample

    ### RESOURCES ###
    amount = Planet::resource_amount.sample
    Planet::resources.sample(amount)
    @planet.resources += resources

    if @planet.save
      redirect_to planets_path
    else
      redirect_to planets_path
    end
  end
end
