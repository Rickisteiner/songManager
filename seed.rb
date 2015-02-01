require 'pry'
require_relative './lib/connection'
require_relative './lib/songs'
require_relative './lib/album'
require_relative './lib/artist'

above = Artists.create({
  name: "Above & Beyond" 
})

acoustic = Albums.create({
  name: "Acoustic",
  artist_id: above.id
})

Songs.create({
  title: "Sirens of the Sea",
  album_id: acoustic.id
})

bayer = Artists.create({
  name: "Andrew Bayer"
})

never = Albums.create({
  name: "If It Were You, We'd Never Leave",
  artist_id: bayer.id
})

Songs.create({
  title: "It's Going To Be Fine",
  album_id: never.id
})

mat = Artists.create({
  name: "Ilan Bluestone" 
})

control = Albums.create({
  name: "Damage Control",
  artist_id: mat.id
})

Songs.create({
  title: "The Sky",
  album_id: control.id
})