

@movies = [
  {name: 'jaws', rating: 'PG', genre: 'thriller' },
  {name: 'halloween', rating: 'R' , genre: 'horror'}
] 

# @movies.each do |movie|
#   puts  movie[:name]
# end

def menu
  puts "What would you like to do?"
  puts "1. Create a movie"
  puts "2. View all movies"
  puts "3. Update a movie"
  puts "4. Delete a movie"
  puts "5. Exit"
end

#needs to be before we call it, otherwise we dont know what it is because not defined
def add_movie
  # want to add this to the movies array
  # our array has hashes , we want to put the values in the hash
  # define an empty hash, but define the keys
  @movie ={name: "", rating: "", genre: ""}
  puts "what is the name of your movie?"
  # name = gets.strip
  # @movie[:name] = name
  # can add all in one line
  @movie[:name] =  gets.strip
  puts "what is the rating of the movie?"
  @movie[:rating] = gets.strip
  puts "what is the genre of the movie?"
  @movie[:genre] = gets.strip

  # add newly created hash to our movies up top
  # you can push it to an array with shovelling
  @movies << @movie
  #@movies.push(@movie)
end

def view_movies
  @movies.each_with_index do |movie, index|
    puts "#{index+1}. #{movie[:name]} - #{movie[:rating]}"
    puts "and gene is #{movie[:genre]}"
    puts 
  end
end

def update_movie(index)
  puts "what is the new name?"
  @movies[index][:name] = gets.strip
  puts "what is the new genre?"
  @movies[index][:genre] = gets.strip
  puts "what is the new rating?"
  @movies[index][:rating] = gets.strip

end

def delete_movie(index)
 #  .delete_at(index)  

 @movies.delete_at(index)
 puts "movie deleted"
 view_movies
end

def app
  menu
  @option = gets.strip.to_i

  # if @option == 1
  #   # do something
  # elsif @option == 2

  # elsif @option == 3

  # elsif @option == 4

  # elsif @option == 5
  #   exit
  # end

  case @option 
  when 1
    add_movie
    app 
  when 2
    view_movies
    app
  when 3
    view_movies
    puts "what movie do you want to update?"
    index = gets.strip.to_i
    update_movie(index-1)
    # want to list the movies again
    app
  when 4
    puts "what movie do you want to delete?"
    view_movies
    index = gets.strip.to_i
    delete_movie(index-1)  
    app
  when 5
    exit
  else
    puts "Please enter one of the number options"
    #recursion - function continually calling istelf
    app
  end

end



app
