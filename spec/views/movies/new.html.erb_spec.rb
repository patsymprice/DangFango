require 'spec_helper'

describe "movies/new" do
  before(:each) do
    assign(:movie, stub_model(Movie,
      :name => "MyString",
      :url => "MyString",
      :synopsis => "",
      :rating => 1
    ).as_new_record)
  end

  it "renders new movie form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", movies_path, "post" do
      assert_select "input#movie_name[name=?]", "movie[name]"
      assert_select "input#movie_url[name=?]", "movie[url]"
      assert_select "input#movie_synopsis[name=?]", "movie[synopsis]"
      assert_select "input#movie_rating[name=?]", "movie[rating]"
    end
  end
end
