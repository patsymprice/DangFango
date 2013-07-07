require 'spec_helper'

describe User do

  it "Can add new user account" do
    user  = User.new(:username => "patsy@mail.com", :password => "password", :name => "Patsy" )
    user.save

    users = User.all
    expect(users).to include(user)
  end

  it "signs up without a password" do
    user = User.new(:username => "B@t.com", :name => "Steve" )
    expect(user.valid?).to be_false
  end

  it { should validate_uniqueness_of(:username) }

end
