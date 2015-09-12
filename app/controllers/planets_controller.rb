class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def create
    @planet = Planet.new
    letters = ('a'..'z').to_a
    numbers = ('a'..'z').to_a
    @planet.name = letters.sample + letters.sample + letters.sample + '-' +
                numbers.sample + numbers.sample + numbers.sample
    eighty = [true, true, true, false, false]
    @planet.atmosphere = eighty.sample

    if @planet.save
      redirect_to planets_path
    else
      redirect_to planets_path
    end
  end
end
