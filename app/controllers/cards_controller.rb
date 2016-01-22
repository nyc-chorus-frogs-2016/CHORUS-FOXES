get "/rounds/:round_id/cards/:card_id" do
  @deck = Round.find_by(id: params[:round_id]).deck
  @card = Card.find_by(id: params[:card_id])

  erb :'cards/show'
end
