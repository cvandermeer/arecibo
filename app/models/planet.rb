class Planet < ActiveRecord::Base
  serialize :resources, Array

  ### CONSTANTS ###
  cattr_accessor :names
  self.names = ['Ara', 'Boalis', 'Chiso', 'Delarium', 'Ember',
                'Fadeus', 'Goliath', 'Hagaris', 'Innovi', 'Judan',
                'Kiono', 'Luvo', 'Minos', 'Nalat', 'Onavi',
                'Polaris', 'Qunoa', 'Risenta', 'Sinser', 'Tivio',
                'Unos', 'Vicenta', 'Worga', 'Xerox', 'Yaxxo',
                'Zemda']
end
