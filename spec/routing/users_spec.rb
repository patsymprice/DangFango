require 'spec_helper'


describe "some description"
  it "some route action description" do
   expect(:get => "/path").to route_to(
    :controller => "users",
    :action =>  "index"
    )
   end


  it "requests user path" do
    user = User.create(:name => "Summet", :country => "USA", :bio => "Being")
    user_path =
     expect(:get => "/users/:id" ).to route_to(
      :controller => "users",
      :action =>  "index",
      :id => user.id
      )
   end

end

