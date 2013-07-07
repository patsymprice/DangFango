class Ticket < ActiveRecord::Base
  attr_accessible :location, :movie_id, :price, :user_id, :showtime
end
