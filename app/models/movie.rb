class Movie < ApplicationRecord
	# has_many method specifies a one to many relationship
	# appearances option specifies that one movie has many appearances
	has_many :appearances
	# actor option specifies that one movie has many actors
	# the through option specifies tht the relationship exists
	# only through appearances
	has_many :actors, through: :appearances
	# validates method specifices that an movie is valid only if
	# a title, duration, rating release date are present
	validates :title, :duration, :rating, :release_date, presence: true
end
