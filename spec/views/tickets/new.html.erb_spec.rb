require 'spec_helper'

describe "tickets/new" do
  before(:each) do
    assign(:ticket, stub_model(Ticket,
      :location => "MyString",
      :price => "9.99",
      :movie_id => 1,
      :user_id => 1
    ).as_new_record)
  end

  it "renders new ticket form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", tickets_path, "post" do
      assert_select "input#ticket_location[name=?]", "ticket[location]"
      assert_select "input#ticket_price[name=?]", "ticket[price]"
      assert_select "input#ticket_movie_id[name=?]", "ticket[movie_id]"
      assert_select "input#ticket_user_id[name=?]", "ticket[user_id]"
    end
  end
end
