require 'sinatra'

Choices = {
  'HAM' => 'Hamburger',
  'PIZ' => 'Pizza',
  'CUR' => 'Curry',
  'NOO' => 'Noodles',
}

get '/' do
  erb :index
end

post '/cast' do
  @vote = Choices[params[:vote]]
  erb :result
end
