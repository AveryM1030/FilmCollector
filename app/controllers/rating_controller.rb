class RatingController < ApplicationController
	# index method gets called when the appearances URL is requested
	# index method is mapped to the appearance index.html.erb
	def index
		# call all method on Movie model class.
		# all method selects all of the data in the movie table
		# and returns the data as an array of objects.
		# store the array of objects in an instance variable.
		# instance varialbe is avaliable to appearances index.html.erb.
		@movies = Movie.all
		# call all method on Actor model class.
		# all method selects all of the data in the actor table
		# and returns the data as an array of objects.
		# store the array of objects in an instance variable.
		# instance varialbe is avaliable to appearances index.html.erb.
		@ratings = Rating.all
		return @movies, @ratings
	end


	# new method gets called when the ratings/new URL is requested.
	# new method is mnapped to the ratings new.html.erb.
	def new
	end

	# new method gets called when the movie/new URL is requested.
	# new method is mnapped to the movie new.html.erb.
	def new
	end

	# create method gets called when the Create button is pushed on
	# the ratings new.hthml.erb.
	def create
		# call constructor of Rating model class giving it the 
		# title, duration, rating, and release date paramters input in the ratings
		# new.html.erb
		# constructor create Movie model object which is stored
		# in variable
		rating = Rating.new(rating_params)
		# call save method on Rating object
		# save method inserts the data in the Movie model object
		# into the movie table
		if movie.save
			# if the save method succeeds, request the movie URL
			# which will rendor the rating index.html.erb in the browser
			redirect_to "/ratings"
		else
			# get full message associated with errors
			# store them in a Rails flash object names errors so that 
			# the full messages may be displayed in the ratings new.html.erb
			flash[:errors] = movie.errors.full_messages
			# if the save method fails, request the movie/new URL
			# which will rendor the ratings new.html.erb in the browser
			redirect_to "/ratings/index"
	end
end

def show
		# call find method on Participant model class giving it the id sent
		# in the request
		# find method selects all of the data in the participant table where
		# the id is equal to the id sent in the request
		# selected data will be returned in a array of meeting object
		# store the array of meeting objects in a instance variable
		# instance variable is available to participant show.html.erb
		@ratings = Movie.find(params[:id]).ratings
	end


private
	def rating_params
		# params is a Rails onject that gets the specified request
		# paramters
		params.require(:ratings).permit(:rating_id, :movie_id)
	end
end
