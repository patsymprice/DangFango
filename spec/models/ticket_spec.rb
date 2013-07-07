require 'spec_helper'

describe Ticket do

  it "can make a movie" do
    ticket  = Ticket.new(
      :name => "Time out",
      :synopsis => "Little boy is caught sneaking cookies before dinner and has to sit in the corner.",
      :url => "http://www.youtube.com/watch?v=k8IXG-8Bzv0",
      :rating => "4.5"
      )
    ticket.save

    tickets = Ticket.all
    expect(tickets).to include(ticket)
  end

  it "signs up without a bio" do
    ticket = Ticket.new(:ame => "Baylee", :age => 2, :country => "USA")
    expect(ticket.valid?).to be_false
  end

end
