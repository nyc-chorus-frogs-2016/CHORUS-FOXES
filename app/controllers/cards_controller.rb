get "/rounds/:round_id/cards/:card_id" do
  @card = Card.find_by(id: params[:card_id])
  @round = Round.find_by(id: params[:round_id])

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
  if @guess.correct == 1
    @right_or_wrong = [" That is correct, you're a bamf!"]
  else
    @right_or_wrong = ["You are wrong. The answer is #{@guess.card.answer}"]
  end

  # @new_deck = @guess.card.deck - @guess.card
  # @new_card = @new_deck.sample

  @new_card = @guess.card.deck.cards.sample

  erb :'guesses/show'
end
