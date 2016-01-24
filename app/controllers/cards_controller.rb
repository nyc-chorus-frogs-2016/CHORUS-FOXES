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
  @guess = Guess.find_by(id: params[:guess_id])
  update_guess_message

  @round = @guess.round
  @guesses = @round.guesses
  if @guesses.size < @round.deck.cards.size
    @guessed_card_array = @guesses.map {|guess| guess.card}
    @unseen_cards = @guess.card.deck.cards - @guessed_card_array
    @new_card = @unseen_cards.sample
  else
    @correct_cards = @round.guesses.where(correct:1).map {|guess| guess.card}
    @incorrect_cards = @guess.card.deck.cards - @correct_cards
    @new_card = @incorrect_cards.sample
  end

  if @new_card == nil
    redirect "/rounds/#{@round.id}"
  else
    erb :'guesses/show'
  end

end
