class ActorsController < ApplicationController
	# index method gets called when the actors URl is requested.
	# index method gets mapped to the actors index.html.erb.
	def index
		# call all method on Actor model class.
		# all method selects all of the data in the actor table
		# and returns the data as an array of objects.
		# store the array of objects in an instance variable.
		# instance varialbe is avaliable to actors index.html.erb.
		@actors = Actor.all
	end

	# new method gets called when the actors/new URL is requested.
	# new method is mnapped to the actors new.html.erb.
	def new
	end

	# create method gets called when the Create button is pushed on
	# the actors new.hthml.erb.
	def create
	end
end
