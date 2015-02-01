require 'sinatra'
require 'sinatra/reloader' #makes it so that you dont have to keep shutting and reloding server
require_relative './lib/connection'
require_relative './lib/artists'
require_relative './lib/albums'
require_relative './lib/songs'
require 'pry'


after do
  ActiveRecord::Base.connection.close
end

get("/") do
  erb(:index)
end

get("/artists") do
  erb(:"artists/index", { locals: { artists: Artist.all(), } })
end

get("/characters/new") do
  erb(:"artists/new", { locals: { albuns: Album.all(), } })
end

post("/artists") do
  character_hash = {
    name: params["name"]
  }

  Artist.create(character_hash)

  erb(:"artists/index", { locals: { artists: Artist.all() } })
end

get("/artists/:id") do
  artist = Artist.find_by({id: params[:id]})
  erb(:"artists/show", { locals: { artist: artist } })
end

get("/artists/:id/edit") do
  artist = Artist.find_by({id: params[:id]})
  erb(:"artists/edit", { locals: { artist: artist, albums: Album.all() } })
end

put("/artists/:id") do
  character_hash = {
    name: params["name"]
  }

  artist = Artist.find_by({id: params[:id]})
  Artist.update(character_hash)

  erb(:"artists/show", { locals: { artist: artist } })
end

delete("/artists/:id") do
  artist = Artist.find_by({id: params[:id]})
  artist.destroy

  redirect "/artists"
end