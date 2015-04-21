module ApplicationHelper
  def connect_to_mysql
    require 'mysql2'

    if (@con = Mysql2::Client.new(host: config[Rails.env]["host"],
                                  username: config[Rails.env]["username"]
                                  password: config[Rails.env]["password"]
                                  database: config[Rails.env]["database"]
                                ))
    else
      fail 'Could not connect'
    end
  end

  def a
    5
  end
end
