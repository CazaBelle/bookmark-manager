# frozen_string_literal: true

require 'sinatra/base'
# BM class inherits sinatra traits
class BookmarkManager < Sinatra::Base
  get '/' do
    'Hello world'
  end
end
