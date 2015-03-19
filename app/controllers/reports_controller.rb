class ReportsController < ApplicationController
  def example
    @projects  = @con.query "SELECT * FROM projects"
  end
end
