get '/' do
  redirect "/decks"
end

get '/decks' do
  @decks = Deck.all
  erb :'decks/index'
end

get '/decks/:deck_id' do
  @deck = find_guess
  erb :'decks/show'
end

