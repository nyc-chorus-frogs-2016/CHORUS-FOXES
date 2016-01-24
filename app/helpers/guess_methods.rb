def update_guess_message
  if @guess.correct == 1
    @right_or_wrong = [" That is correct, you're a bamf!"]
  else
    @right_or_wrong = ["You are wrong. The answer is #{@guess.card.answer}"]
  end
end


# guess.round.deck.cards
# guess.card.deck.cards
# guess.round.guesses