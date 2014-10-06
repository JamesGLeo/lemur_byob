require 'sinatra'
require './lib/textbook'

set :blog_storage, 'blog.csv'

get '/entries' do
  textbook = Textbook.new(settings.blog_storage)
  textbook.to_s
end