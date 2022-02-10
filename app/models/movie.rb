class Movie < ApplicationRecord
	# validates method specifices that an movie is valid only if
	# a title, duration, rating release date are present
	validates :title, :duration, :rating, :release_date, presence: true
end
