require 'sinatra'
require './lib/textbook'
require './lib/page'

set :blog_storage, 'test/fixtures/two_entries.csv'

get '/entries' do
  textbook = Textbook.new(settings.blog_storage)
  textbook.to_s
end

post '/entries' do
  page = Page.new(params)
  textbook = Textbook.new(settings.blog_storage)
  textbook.insert(page)
  redirect '/entries`'
end

get '/last_entry' do
  textbook = Textbook.new(settings.blog_storage)
  textbook.last_entry
end