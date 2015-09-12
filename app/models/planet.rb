class Planet < ActiveRecord::Base
  serialize :resources, Array
end
