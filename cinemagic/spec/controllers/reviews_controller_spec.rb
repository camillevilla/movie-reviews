require 'rails_helper'
require 'factory_girl'

describe ReviewsController do
  let!(:movie) { Movie.create!(id: 1, title: "Movie Title", year: 1999, director: "Person", mpaa_rating: "NC-17")}
  let!(:user) { User.create!(id: 1, username: "tomtom", email: "tom@tom.com", password: "$2a$11$faNAxLmLeqIWHIC8wO5GKuI2e96VlwXxvK2FgXaT/.ZUIEcK0Jn7C")}
  let!(:review) { Review.create!(user_id: 1, movie_id: 1, star_rating: 3, text: "Great movie.") }

  describe "GET #show" do
    it "responds with status code 200" do
      get :show, { id: review.id, movie_id: movie.id }
      expect(response).to have_http_status 200
    end

    it "assigns the correct review as @review" do
      get :show, { id: review.id, movie_id: movie.id }
      expect(assigns(:review)).to eq(review)
    end

    it "renders the :show template" do
      get :show, { id: review.id, movie_id: movie.id }
      expect(response).to render_template(:show)
    end
  end

  # describe "GET #new" do
  #   it "responds with status code 200" do
  #     get :new
  #     expect(response).to have_http_status 200
  #   end

  #   it "assigns a new game to @game" do
  #     get :new
  #     expect(assigns(:game)).to be_a_new Game
  #   end

  #   it "renders the :new template" do
  #     get :new
  #     expect(response).to render_template(:new)
  #   end
  # end

  # describe "POST #create" do
  #   context "when valid params are passed" do
  #     it "responds with status code 302" do
  #       post :create, { game: { user_throw: "rock", computer_throw: "scissors" } }
  #       expect(response).to have_http_status 302
  #     end

  #     it "creates a new game in the database" do
  #       expect {post :create, { game: { user_throw: "rock", computer_throw: "scissors" } }}.to change {Game.last.id}
  #     end

  #     it "assigns the newly created game as @game" do
  #       post :create, { game: { user_throw: "rock", computer_throw: "scissors" }}
  #       expect(assigns(:game)).to eq Game.last
  #     end


  #     it "sets a notice that the game was successfully created" do
  #       post :create, { game: { user_throw: "rock", computer_throw: "scissors" } }
  #       expect(flash[:notice]).to match /Game was successfully created./
  #     end

  #     it "redirects to the created game" do
  #       post :create, { game: { user_throw: "rock", computer_throw: "scissors" } }
  #       expect(response).to redirect_to(assigns(:game))
  #     end
  #   end

  #   context "when invalid params are passed" do
  #     it "responds with status code 200" do
  #       post :create, { game: { user_throw: "pineapple" } }
  #       expect(response).to have_http_status 200
  #     end

  #     it "does not create a new game in the database" do
  #       expect {post :create, { game: { user_throw: "pineapple"}}}.to_not change {Game.last.id}
  #     end

  #     it "assigns the unsaved game as @game" do
  #       post :create, { game: { user_throw: "pineapple"}}
  #       expect(assigns(:game)).to_not eq Game.last
  #     end

  #     it "renders the :new template" do
  #       post :create, { game: { user_throw: "pineapple"}}
  #       expect(response).to render_template(:new)
  #     end
  #   end
  # end

  # describe "DELETE #destroy" do
  #   it "responds with status code 302" do
  #     delete :destroy, { id: game.id }
  #     expect(response).to have_http_status 302
  #   end

  #   it "destroys the requested game" do
  #     expect { delete(:destroy, { id: game.id }) }.to change(Game, :count).by(-1)
  #   end

  #   it "sets a notice that the game was destroyed" do
  #     delete :destroy, { id: game.id }
  #     expect(flash[:notice]).to match /Game was successfully destroyed/
  #   end

  #   it "redirects to the games list" do
  #     delete :destroy, { id: game.id }
  #     expect(response).to redirect_to games_url
  #   end
  # end
end
