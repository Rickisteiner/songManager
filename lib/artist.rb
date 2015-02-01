require 'active_record'

class Artist < ActiveRecord::Base
	def album
		Album.where({artist_id: self.id})
	end
end

# Looks into the artists table
# albums will find the album where the artist id is = to the id of the artist
# remember the artist id is what is in the albums table, and it will be equal to the primary key
# of the id in the artist table

