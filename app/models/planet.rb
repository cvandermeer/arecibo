class Planet < ActiveRecord::Base
  ### CALLBACKS ###
  before_create :generate_planet

  def generate_planet
    a = ('a'..'z').to_a.sample
    b = ('a'..'z').to_a.sample
    c = ('a'..'z').to_a.sample
    d = ('0'..'9').to_a.sample
    e = ('0'..'9').to_a.sample
    f = ('0'..'9').to_a.sample
    self.name = a + b + c + '-' + d + e + f
  end
end
