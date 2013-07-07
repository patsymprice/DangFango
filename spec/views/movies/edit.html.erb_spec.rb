require 'spec_helper'

describe "movies/edit" do
  before(:each) do
    @movie = assign(:movie, stub_model(Movie,
      :name => "MyString",
      :url => "MyString",
      :synopsis => "",
      :rating => 1
    ))
  end

  it "renders the edit movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", movie_path(@movie), "post" do
      assert_select "input#movie_name[name=?]", "movie[name]"
      assert_select "input#movie_url[name=?]", "movie[url]"
      assert_select "input#movie_synopsis[name=?]", "movie[synopsis]"
      assert_select "input#movie_rating[name=?]", "movie[rating]"
    end
  end
end
