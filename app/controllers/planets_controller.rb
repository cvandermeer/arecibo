class PlanetsController < ApplicationController
  def index
    @planets = Planet.all
  end

  def create
    @planet = Planet.new
    redirect_to planets_path if @planet.save
  end
end