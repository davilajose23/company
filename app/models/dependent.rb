class Dependent < ActiveRecord::Base
  self.primary_keys = :essn, :Dependent_name
end
