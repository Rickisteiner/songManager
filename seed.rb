require 'pry'
require_relative './lib/connection'
require_relative './lib/songs'
require_relative './lib/album'
require_relative './lib/artist'

above = Artist.create({
  name: "Above & Beyond" 
})

acoustic = Album.create({
  name: "Acoustic",
  artist_id: above.id
})

Song.create({
  title: "Sirens of the Sea",
  album_id: acoustic.id
})

bayer = Artist.create({
  name: "Andrew Bayer"
})

never = Album.create({
  name: "If It Were You, We'd Never Leave",
  artist_id: bayer.id
})

Song.create({
  title: "It's Going To Be Fine",
  album_id: never.id
})

mat = Artist.create({
  name: "Ilan Bluestone" 
})

control = Album.create({
  name: "Damage Control",
  artist_id: mat.id
})

Song.create({
  title: "The Sky",
  album_id: control.id
})