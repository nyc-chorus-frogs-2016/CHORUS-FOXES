require 'pry'

get '/rounds/:id' do
  @round = Round.find_by(id: params[:id])
  erb :'rounds/show'
end

post '/rounds' do
  @round = Round.create(deck_id: params[:deck_id], user_id: 1 )

  @deck = Deck.find_by(id: params[:deck_id])
  @card = @deck.cards.sample

  redirect "/rounds/#{@round.id}/cards/#{@card.id}"
end
