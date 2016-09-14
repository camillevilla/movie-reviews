##Models 
#Users 
  has_many :reviews
  has_many :movies, through: :reviews 
  
- User table 
username 
email 
password 

#Movies 
  has_many :reviewers, class_name: "User" 
  

- Movie table 
title 
category 
overall rating 

  

-Reviews 
  belongs_to :user 



Controllers 



Views 

