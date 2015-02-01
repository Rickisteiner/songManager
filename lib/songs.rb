require 'active_record'

class Song < ActiveRecord::Base
	def album
		Album.where({album_id: self.id})
	end
end