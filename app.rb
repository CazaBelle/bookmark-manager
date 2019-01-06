ENV["RACK_ENV"] ||= 'development'
# frozen_string_literal: true
require './lib/bookmark'
require 'sinatra/base'
require 'data_mapper'
require_relative 'datamapper_setup'

# BM class inherits sinatra traits
class BookmarkManager < Sinatra::Base
  enable :method_override 

  get '/' do
    erb(:index)
  end

  post '/bookmark' do 
    @bookmark = Bookmark.create(url: params[:url])
    redirect'/bookmarks'
   end
  
  get '/bookmarks' do 
    @bookmarks = Bookmark.all
    erb(:bookmarks)
  end

  get '/bookmarks/:id' do |id|
    @bookmark = Bookmark.get!(id)
  end

  get '/bookmarks/:id/edit' do
    @bookmark = Bookmark.get(params[:id])
    erb(:edit_bookmark)
  end

  put '/bookmarks/:id' do
    @bookmark = Bookmark.get(params[:id])
    @bookmark.update!(:url => params[:url])
    redirect '/bookmarks'
  end

  get '/bookmarks/:id/delete' do 
    Bookmark.get(params[:id]).destroy 
    redirect('/bookmarks')
  end

end
