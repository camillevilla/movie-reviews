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
test_genres = ["action", "comedy", "romantic", "drama", "horror", "western"]
test_genres.each {|genre| Genre.create(name: genre)}

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


Movie.all.map {|movie| movie.genres << Genre.all.sample}

# Minimum reviews
6.times do
  Review.create(
    movie_id: 1,
    user_id: rand(1..100),
    text: Faker::Lorem.paragraph)
end

#bob
75.times do
  Vote.create(
    review_id: 1,
    user_id: rand(1..100),
    up_vote_value: 1
    )
end
25.times do
  Vote.create(
    review_id: 1,
    user_id: rand(1..100),
    down_vote_value: 1
    )
end

#joe
3.times do
  Vote.create(
    review_id: 2,
    user_id: rand(1..100),
    up_vote_value: 1
    )
end
Vote.create(
    review_id: 2,
    user_id: rand(1..100),
    down_vote_value: 1
    )

#jane
10.times do
  Vote.create(
    review_id: 3,
    user_id: rand(1..100),
    up_vote_value: 1
    )
end
10.times do
  Vote.create(
      review_id: 3,
      user_id: rand(1..100),
      down_vote_value: 1
      )
end

#jim
15.times do
  Vote.create(
    review_id: 4,
    user_id: rand(1..100),
    up_vote_value: 1
    )
end
10.times do
  Vote.create(
      review_id: 4,
      user_id: rand(1..100),
      down_vote_value: 1
      )
end

#julie
10.times do
  Vote.create(
    review_id: 5,
    user_id: rand(1..100),
    up_vote_value: 1
    )
end
20.times do
  Vote.create(
      review_id: 5,
      user_id: rand(1..100),
      down_vote_value: 1
      )
end

#jessica
200.times do
  Vote.create(
    review_id: 6,
    user_id: rand(1..100),
    up_vote_value: 1
    )
end
50.times do
  Vote.create(
      review_id: 6,
      user_id: rand(1..100),
      down_vote_value: 1
      )
end

# comment testing
Comment.create(
  text: "You're crazy!",
  review_id: 1,
  user_id: 1
  )

Comment.create(
  text: "You're brilliant!",
  review_id: 1,
  user_id: 2
  )

Comment.create(text: "You're crazy!",review_id: 1,user_id: 1)

Comment.create( text: "You're brilliant!", review_id: 1, user_id: 2)

