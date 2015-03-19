class Location < ActiveRecord::Base
  self.primary_keys = :dnumber, :dlocation

  belongs_to :department, foreign_key: :dnumber
end
