# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

User.delete_all
Item.delete_all
Bid.delete_all

users = 100.times.map do
  User.create!( :username => Faker::Name.first_name,
                :email      => Faker::Internet.email,
                :password   => 'password' )
end


#   Channel.create!(:name            => name,
#                   :callsign        => name[0..2].upcase,
#                   :price_per_month => Faker::Commerce.price)
# end

# action_movies = ["Ben-Hur", "Jason Bourne", "Now You See Me", "Fast and the Furious"]
# comedy_movies = ["Young Frankenstein", "Ghostbusters", "The Hangover", "Sausage Party"]
# romantic_movies = ["The Notebook", "When Harry Met Sally", "50 First Dates", "Hitch", "Crazy Stupid Love"]
# drama_movies = ["Titanic", "The Dark Knight", "Good Will Hunting", "The Shawshank Redemption"]
# horror_movies = ["The Conjuring", "The Ring", "The Exorcist", "The Mist", "Scream"]
# western_movies = ["Unforgiven", "Dances With Wolves", "The Good, the bad, and the Ugly", "Tombstone"]




# users.each do |user|
#   user_channels = channels.sample(rand(2..4))
#   user_channels.each do |channel|
#     Subscription.create!(user: user,
#                          channel: channel)
#   end
# end
# Contact GitHub API Training Shop Blog About
