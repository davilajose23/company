class ReportsController < ApplicationController

  def example
    connect
    @projects  = @con.query "SELECT * FROM projects"
  end

  def sales_report
  end

  private 

  def connect
    require 'mysql2'
    if (@con = Mysql2::Client.new(host: '127.0.0.1',
                                 username: 'root',
                                 password: '',
                                 database: 'company'
                                ))
    else
      fail 'Could not connect'
    end

  end
end
