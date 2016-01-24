get "/rounds/:round_id/cards/:card_id" do
  @card = find_card
  @round = find_round
  erb :'cards/show'
end

post "/rounds/:round_id/cards/:card_id" do
  @guess = Guess.create(round_id: params[:round_id], card_id: params[:card_id], correct: 0)
  if params[:guess] == @guess.card.answer
    @guess.update_attributes(correct: 1)
  end
  redirect "/guess/#{@guess.id}"
end

get "/guess/:guess_id" do
  @guess = find_guess
  update_guess_message

  if guesses_from_current_round.size < cards_from_current_round.size
    @new_card = (cards_from_current_round-cards_from_guesses(guesses_from_current_round)).sample
  else
    @new_card = (cards_from_current_round - cards_from_guesses(guesses_from_current_round.where(correct:1))).sample
  end

  if @new_card == nil
    redirect "/rounds/#{@round.id}"
  else
    erb :'guesses/show'
  end
end