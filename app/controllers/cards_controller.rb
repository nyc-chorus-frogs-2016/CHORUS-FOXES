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
    erb :'rounds/show'
  else
    erb :'guesses/show'
  end

  #cards that only have a single guess were correctly answered the first time

end
