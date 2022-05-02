# In this assignment, you'll be using the domain model from hw1 (found in the hw1-solution.sql file)
# to create the database structure for "KMDB" (the Kellogg Movie Database).
# The end product will be a report that prints the movies and the top-billed
# cast for each movie in the database.

# To run this file, run the following command at your terminal prompt:
# `rails runner kmdb.rb`

# Requirements/assumptions
#
# - There will only be three movies in the database – the three films
#   that make up Christopher Nolan's Batman trilogy.
# - Movie data includes the movie title, year released, MPAA rating,
#   and studio.
# - There are many studios, and each studio produces many movies, but
#   a movie belongs to a single studio.
# - An actor can be in multiple movies.
# - Everything you need to do in this assignment is marked with TODO!

# Rubric
# 
# There are three deliverables for this assignment, all delivered within
# this repository and submitted via GitHub and Canvas:
# - Generate the models and migration files to match the domain model from hw1.
#   Table and columns should match the domain model. Execute the migration
#   files to create the tables in the database. (5 points)
# - Insert the "Batman" sample data using ruby code. Do not use hard-coded ids.
#   Delete any existing data beforehand so that each run of this script does not
#   create duplicate data. (5 points)
# - Query the data and loop through the results to display output similar to the
#   sample "report" below. (10 points)

# Submission
# 
# - "Use this template" to create a brand-new "hw2" repository in your
#   personal GitHub account, e.g. https://github.com/<USERNAME>/hw2
# - Do the assignment, committing and syncing often
# - When done, commit and sync a final time before submitting the GitHub
#   URL for the finished "hw2" repository as the "Website URL" for the 
#   Homework 2 assignment in Canvas

# Successful sample output is as shown:

# Movies
# ======

# Batman Begins          2005           PG-13  Warner Bros.
# The Dark Knight        2008           PG-13  Warner Bros.
# The Dark Knight Rises  2012           PG-13  Warner Bros.

# Top Cast
# ========

# Batman Begins          Christian Bale        Bruce Wayne
# Batman Begins          Michael Caine         Alfred
# Batman Begins          Liam Neeson           Ra's Al Ghul
# Batman Begins          Katie Holmes          Rachel Dawes
# Batman Begins          Gary Oldman           Commissioner Gordon
# The Dark Knight        Christian Bale        Bruce Wayne
# The Dark Knight        Heath Ledger          Joker
# The Dark Knight        Aaron Eckhart         Harvey Dent
# The Dark Knight        Michael Caine         Alfred
# The Dark Knight        Maggie Gyllenhaal     Rachel Dawes
# The Dark Knight Rises  Christian Bale        Bruce Wayne
# The Dark Knight Rises  Gary Oldman           Commissioner Gordon
# The Dark Knight Rises  Tom Hardy             Bane
# The Dark Knight Rises  Joseph Gordon-Levitt  John Blake
# The Dark Knight Rises  Anne Hathaway         Selina Kyle

# Delete existing data, so you'll start fresh each time this script is run.
# Use `Model.destroy_all` code.
# TODO!
Studio.destroy_all
#Movie.destroy_all
#Actor.destroy_all
#Role.destroy_all

# Generate models and tables, according to the domain model.
# TODO!

# Insert data into the database that reflects the sample data shown above.
# Do not use hard-coded foreign key IDs.
# TODO!

#insert studio data
new_studio = Studio.new
new_studio["name"] = "Warner Bros."
new_studio.save
Warner_Bros = Studio.find_by({"name" => "Warner Bros."})
#puts "There are #{Studio.all.count} studios."

#insert movie data
new_movie = Movie.new
new_movie["title"] = "Batman Begins"
new_movie["year_released"] = "2005"
new_movie["rated"] = "PG-13"
new_movie["studio_id"] = Warner_Bros["id"]
new_movie.save
Batman_Begins = Movie.find_by({"title" => "Batman Begins"})
#puts "There are #{Movie.all.count} movies."

new_movie1 = Movie.new
new_movie1["title"] = "The Dark Knight"
new_movie1["year_released"] = "2008"
new_movie1["rated"] = "PG-13"
new_movie1["studio_id"] = 
new_movie1.save
The_Dark_Knight = Movie.find_by({"title" => "The Dark Knight"})
#puts "There are #{Movie.all.count} movies."

new_movie2 = Movie.new
new_movie2["title"] = "The Dark Knight Rises"
new_movie2["year_released"] = "2012"
new_movie2["rated"] = "PG-13"
new_movie2["studio_id"] = 
new_movie2.save
The_Dark_Knight_Rises = Movie.find_by({"title" => "The Dark Knight Rises"})
#puts "There are #{Movie.all.count} movies."

#insert actor data
new_actor = Actor.new
new_actor["name"] = "Christian Bale"
new_actor.save
Christian_Bale = Actor.find_by({"name" => "Christian Bale"})
#puts "There are #{Actor.all.count} actors."

new_actor1 = Actor.new
new_actor1["name"] = "Michael Caine"
new_actor1.save
Michael_Caine = Actor.find_by({"name" => "Michael Caine"})
#puts "There are #{Actor.all.count} actors."

new_actor2 = Actor.new
new_actor2["name"] = "Liam Neeson"
new_actor2.save
Liam_Neeson = Actor.find_by({"name" => "Liam Neeson"})
#puts "There are #{Actor.all.count} actors."

new_actor3 = Actor.new
new_actor3["name"] = "Katie Holmes"
new_actor3.save
Katie_Holmes = Actor.find_by({"name" => "Katie Holmes"})
#puts "There are #{Actor.all.count} actors."

new_actor4 = Actor.new
new_actor4["name"] = "Gary Oldman"
new_actor4.save
Gary_Oldman = Actor.find_by({"name" => "Gary Oldman"})
#puts "There are #{Actor.all.count} actors."

new_actor5 = Actor.new
new_actor5["name"] = "Heath Ledger"
new_actor5.save
Heath_Ledger = Actor.find_by({"name" => "Heath Ledger"})
#puts "There are #{Actor.all.count} actors."

new_actor6 = Actor.new
new_actor6["name"] = "Aaron Eckhart"
new_actor6.save
Aaron_Eckhart = Actor.find_by({"name" => "Aaron Eckhart"})
#puts "There are #{Actor.all.count} actors."

new_actor7 = Actor.new
new_actor7["name"] = "Maggie Gyllenhaal"
new_actor7.save
Maggie_Gyllenhaal = Actor.find_by({"name" => "Maggie Gyllenhaal"})
#puts "There are #{Actor.all.count} actors."

new_actor8 = Actor.new
new_actor8["name"] = "Tom Hardy"
new_actor8.save
Tom_Hardy = Actor.find_by({"name" => "Tom Hardy"})
#puts "There are #{Actor.all.count} actors."

new_actor9 = Actor.new
new_actor9["name"] = "Joseph Gordon-Levitt"
new_actor9.save
Joseph_Gordon_Levitt = Actor.find_by({"name" => "Joseph Gordon-Levitt"})
#puts "There are #{Actor.all.count} actors."

new_actor10 = Actor.new
new_actor10["name"] = "Anne Hathaway"
new_actor10.save
Anne_Hathaway = Actor.find_by({"name" => "Anne Hathaway"})
#puts "There are #{Actor.all.count} actors."

#insert role data
new_role = Role.new
new_role["movie_id"] = 
new_role["actor_id"] =
new_role["character_name"] = "Bruce Wayne"
new_role.save
puts "There are #{Role.all.count} roles."

new_role1 = Role.new
new_role1["movie_id"] = 
new_role1["actor_id"] =
new_role1["character_name"] = "Alfred"
new_role1.save
puts "There are #{Role.all.count} roles."

new_role2 = Role.new
new_role2["movie_id"] = 
new_role2["actor_id"] =
new_role2["character_name"] = "Ra's Al Ghul"
new_role2.save
puts "There are #{Role.all.count} roles."

new_role3 = Role.new
new_role3["movie_id"] = 
new_role3["actor_id"] =
new_role3["character_name"] = "Rachel Dawes"
new_role3.save
puts "There are #{Role.all.count} roles."

new_role4 = Role.new
new_role4["movie_id"] = 
new_role4["actor_id"] =
new_role4["character_name"] = "Commissioner Gordon"
new_role4.save
puts "There are #{Role.all.count} roles."

new_role5 = Role.new
new_role5["movie_id"] = 
new_role5["actor_id"] =
new_role5["character_name"] = "Joker"
new_role5.save
puts "There are #{Role.all.count} roles."

new_role6 = Role.new
new_role6["movie_id"] = 
new_role6["actor_id"] =
new_role6["character_name"] = "Harvey Dent"
new_role6.save
puts "There are #{Role.all.count} roles."

new_role7 = Role.new
new_role7["movie_id"] = 
new_role7["actor_id"] =
new_role7["character_name"] = "Bane"
new_role7.save
puts "There are #{Role.all.count} roles."

new_role8 = Role.new
new_role8["movie_id"] = 
new_role8["actor_id"] =
new_role8["character_name"] = "John Blake"
new_role8.save
puts "There are #{Role.all.count} roles."

new_role9 = Role.new
new_role9["movie_id"] = 
new_role9["actor_id"] =
new_role9["character_name"] = "Selina Kyle"
new_role9.save
puts "There are #{Role.all.count} roles."


# Prints a header for the movies output
#puts "Movies"
#puts "======"
#puts ""

# Query the movies data and loop through the results to display the movies output.
# TODO!

# Prints a header for the cast output
#puts ""
#puts "Top Cast"
#puts "========"
#puts ""

# Query the cast data and loop through the results to display the cast output for each movie.
# TODO!
