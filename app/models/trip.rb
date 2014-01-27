class Trip < ActiveRecord::Base
  validates_presence_of :start_date, :end_date, :city, :country

end
