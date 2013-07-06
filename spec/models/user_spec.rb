require 'spec_helper'

describe User do

  it "signs up" do
    user  = User.new(:name => "Patsy", :age => 44, :country => "USA", :bio => "Person.here")
    user.save

    users = User.all
    expect(users).to include(user)
  end

  it "signs up without a bio" do
    user = User.new(:ame => "Baylee", :age => 2, :country => "USA")
    expect(user.valid?).to be_false
  end

end
