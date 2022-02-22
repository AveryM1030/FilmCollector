class Movie < ApplicationRecord
	# has_many method specifies a one to many relationship
	# appearances option specifies that one actor has many appearances
	# destroy causes all appearance to be destroyed when their
	# related movie is destroyed
	has_many :appearances, dependent: :destroy
	# movie option specifies that one movie has many actors
	# the through option specifies tht the relationship exists
	# only through appearances
	has_many :actors, through: :appearances
	# validates method specifices that an movie is valid only if
	# a title, duration, rating release date are present
	validates :title, :duration, :rating, :release_date, presence: true
end
