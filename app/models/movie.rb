class Movie < ActiveRecord::Base
  attr_accessible :name, :rating, :synopsis, :url
  has_many :users, :through => :tickets
  has_many :tickets
end
