# frozen_string_literal: true
require './lib/bookmark'
require 'sinatra/base'
# BM class inherits sinatra traits
class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello world'
  end
  get '/bookmarks' do 
    bookmark = Bookmark.new
    @BM_list = bookmark.all
    erb(:index)
  end
end
