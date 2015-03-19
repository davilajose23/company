class Employee < ActiveRecord::Base
  self.primary_key = :ssn

  belongs_to :department, foreign_key: :DNo
  belongs_to :supervisor, class_name: 'Employee', foreign_key: :SuperSsn
end
