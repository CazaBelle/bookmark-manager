ENV["RACK_ENV"] ||= 'development'
# frozen_string_literal: true
require './lib/bookmark'
require 'sinatra/base'
require 'data_mapper'
require_relative 'datamapper_setup'

# BM class inherits sinatra traits
class BookmarkManager < Sinatra::Base

  get '/' do
    @bookmarks = Bookmark.all
    erb(:index)
    
  end

  post '/bookmarks' do 
   @bookmark = Bookmark.create(url: params[:url])
   redirect'/'
  end

 

end
