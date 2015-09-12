class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def create
    @planet = Planet.new
    ### NAME ###
    letters = ('a'..'z').to_a
    numbers = ('1'..'9').to_a
    @planet.name = letters.sample + letters.sample + letters.sample + '-' +
                numbers.sample + numbers.sample + numbers.sample

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
