class Assignation < ActiveRecord::Base
  self.primary_keys = :essn, :pNo

  belongs_to :employee, foreign_key: :essn
  belongs_to :project, foreign_key: :pNo
end
