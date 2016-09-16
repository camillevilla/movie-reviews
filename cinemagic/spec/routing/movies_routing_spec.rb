require "rails_helper"

RSpec.describe "Routing to movies", :type => :routing do
  it "routes GET /movies to movies#index" do
    expect(:get => "/movies").to route_to("movies#index")
  end

  it "routes GET /movies/new to movies#new" do
    expect(:get => "/movies/new").to route_to("movies#new")
  end

  it "routes GET /movies/1 to movies#show" do
    expect(:get => "/movies/1").to route_to("movies#show", :id => "1")
  end

  it "routes POST /movies to movies#create" do
    expect(:post => "/movies").to route_to("movies#create")
  end

  it "routes DELETE /movies/1 to movies#destroy" do
    expect(:delete => "/movies/1").to route_to("movies#destroy", :id => "1")
  end
end
