class User < ActiveRecord::Base
  has_secure_password
  attr_accessible :ticket_id, :username, :password, :password_confirmation

  validates :username, :uniquenss => true
end
