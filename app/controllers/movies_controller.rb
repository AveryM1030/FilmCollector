class MoviesController < ApplicationController
	# index method gets called when the movies URL is requested.
	# index method gets mapped to the movies index.html.erb.
	def index
		# call all method on Movie model class.
		# all method selects all of the data in the movie table
		# and returns the data as an array of objects.
		# store the array of objects in an instance variable.
		# instance varialbe is avaliable to movies index.html.erb.
		@movies = Movie.all
	end


	# new method gets called when the movies/new URL is requested.
	# new method is mnapped to the movies new.html.erb.
	def new
	end

	# new method gets called when the movie/new URL is requested.
	# new method is mnapped to the movie new.html.erb.
	def new
	end

	# create method gets called when the Create button is pushed on
	# the movies new.hthml.erb.
	def create
		# call constructor of Movie model class giving it the 
		# title, duration, rating, and release date paramters input in the movies
		# new.html.erb
		# constructor create Movie model object which is stored
		# in variable
		movie = Movie.new(movie_params)
		# call save method on Movie object
		# save method inserts the data in the Movie model object
		# into the movie table
		if movie.save
			# if the save method succeeds, request the movie URL
			# which will rendor the movie index.html.erb in the browser
			redirect_to "/movies"
		else
			# get full message associated with errors
			# store them in a Rails flash object names errors so that 
			# the full messages may be displayed in the movies new.html.erb
			flash[:errors] = movie.errors.full_messages
			# if the save method fails, request the movie/new URL
			# which will rendor the movies new.html.erb in the browser
			redirect_to "/movie/new"
	end
end

	private
	def movie_params
		# params is a Rails onject that gets the specified request
		# paramters
		params.require(:movie).permit(:title, :duration, :rating, :release_date)
	end

end
