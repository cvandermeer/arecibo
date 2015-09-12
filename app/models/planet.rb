class Planet < ActiveRecord::Base
  serialize :resources, Array

  ### CONSTANTS ###
  cattr_accessor :names, :resources, resource_amount
  self.names = ['Ara', 'Boalis', 'Chiso', 'Delarium', 'Ember',
                'Fadeus', 'Goliath', 'Hagaris', 'Innovi', 'Judan',
                'Kiono', 'Luvo', 'Minos', 'Nalat', 'Onavi',
                'Polaris', 'Qunoa', 'Risenta', 'Sinser', 'Tivio',
                'Unos', 'Vicenta', 'Worga', 'Xerox', 'Yaxxo',
                'Zemda']
  self.resources = ['Iron', 'Copper', 'Coal']
  self.resource_amount = [0, 0, 0, 1, 1, 1, 1, 2, 2, 3]
end
