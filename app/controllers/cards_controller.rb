#ZM: +1
get "/rounds/:round_id/cards/:card_id" do
  @card = find_card
  @round = find_round
  erb :'cards/show'
end

post "/rounds/:round_id/cards/:card_id" do
  @guess = Guess.create(round_id: params[:round_id], card_id: params[:card_id], correct: 0)

  #ZM: This should be a method on the card, instead of controller logic.
  # if @guess.card.is_correct?( params[:guess].downcase ) 
  if params[:guess].downcase == @guess.card.answer
    @guess.update_attributes(correct: 1)
  end

  redirect "/guess/#{@guess.id}"
end

get "/guess/:guess_id" do
  @guess = find_guess

  #ZM: This is not a correct helper method. 
  update_guess_message

  @round = @guess.round

  #ZM: These should be model methods, not helpers 
  #ZM: Also this is really confusing to digest this sort of logic should be in the models not in the controller
  #ZM: Something like
  #ZM: @new_card = @round.next_card
  #ZM: Then the rest of the logic is the same
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