class Project < ActiveRecord::Base
  self.primary_key = :pnumber
  belongs_to :department, foreign_key: :dnum
end
