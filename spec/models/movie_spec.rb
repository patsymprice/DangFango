require 'spec_helper'

describe Movie do
  pending "add some examples to (or delete) #{__FILE__}"

  it "can make a movie" do
    movie  = Movie.new(
      :name => "Time out",
      :synopsis => "Little boy is caught sneaking cookies before dinner and has to sit in the corner.",
      :url => "http://www.youtube.com/watch?v=k8IXG-8Bzv0",
      :rating => 5
      )
    movie.save

    movies = Movie.all
    expect(movies).to include(movie)
  end


end
