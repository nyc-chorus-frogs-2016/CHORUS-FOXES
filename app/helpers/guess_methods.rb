def update_guess_message
  if @guess.correct == 1
    @right_or_wrong = " That is correct, you're doing great!"
  else
    @right_or_wrong = "Sorry, that is incorrect. The answer is #{@guess.card.answer}"
  end
end

def guesses_from_current_round
  Guess.where(round: @guess.round)
end

def cards_from_current_round
  Card.where(deck: @guess.deck)
end

def cards_from_guesses(guesses)
  guesses.map {|guess| guess.card}
end