# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
require 'faker'

User.delete_all

users = 100.times.map do
  User.create!( :username => Faker::Name.first_name,
                :email      => Faker::Internet.email,
                :password   => 'sldkfjlksdj' )
end


# Test categories
# action_movies = ["Ben-Hur", "Jason Bourne", "Now You See Me", "Fast and the Furious"]
# comedy_movies = ["Young Frankenstein", "Ghostbusters", "The Hangover", "Sausage Party"]
# romantic_movies = ["The Notebook", "When Harry Met Sally", "50 First Dates", "Hitch", "Crazy Stupid Love"]
# drama_movies = ["Titanic", "The Dark Knight", "Good Will Hunting", "The Shawshank Redemption"]
# horror_movies = ["The Conjuring", "The Ring", "The Exorcist", "The Mist", "Scream"]
# western_movies = ["Unforgiven", "Dances With Wolves", "The Good, the bad, and the Ugly", "Tombstone"]


#Test genres:
Genre.create(name: "action")
Genre.create(name: "comedy")
Genre.create(name: "romantic")
Genre.create(name: "drama")
Genre.create(name: "horror")
Genre.create(name: "western")

# Small movie set for testing show view -
Movie.create(
title:"All Watched Over by Machines of Loving Grace pt 2: The Use and Abuse of Vegetational Concepts",
year:2011,
director:"Adam Curtis"
  )

Movie.create(
title:"Children of Men",
year:2006,
director:"Alfonso Cuarón",
mpaa_rating: "R",
  )

Movie.create(
title:"A Trip to the Moon",
year:1902,
director:"Georges Méliès"
  )

Movie.create(
title:"This is Spinal Tap",
year:1984,
director:"Rob Reiner",
mpaa_rating: "R",
  )

Movie.create(
title:"Xala",
year:1975,
director:"Ousmane Sembène"
  )
