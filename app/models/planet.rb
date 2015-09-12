class Planet < ActiveRecord::Base
  serialize :resources, Array

  ### CONSTANTS ###
  cattr_accessor :names
  self.names = ['Alpha', 'Bravo', 'Charlie', 'Detla', 'Echo',
                'Foxtrot', 'Golf', 'Hotel', 'India', 'Juliet',
                'Kilo', 'Lima', 'Mike', 'November', 'Oscar',
                'Papa', 'Quebec', 'Romeo', 'Sierra', 'Tango',
                'Uniform', 'Victor', 'Whiskey', 'Xray', 'Yankee',
                'Zulu']
end
