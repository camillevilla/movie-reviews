require "rails_helper"

RSpec.describe "Routing to genres", :type => :routing do
  it "routes GET /genres to genres#index" do
    expect(:get => "/genres").to route_to("genres#index")
  end

  it "routes GET /genres/new to genres#new" do
    expect(:get => "/genres/new").to route_to("genres#new")
  end

  it "routes GET /genres/1 to genres#show" do
    expect(:get => "/genres/1").to route_to("genres#show", :id => "1")
  end

  it "routes POST /genres to genres#create" do
    expect(:post => "/genres").to route_to("genres#create")
  end

  it "routes DELETE /genres/1 to genres#destroy" do
    expect(:delete => "/genres/1").to route_to("genres#destroy", :id => "1")
  end
end
