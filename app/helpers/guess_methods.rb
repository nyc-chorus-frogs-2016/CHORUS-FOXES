#ZM: Model Logic, helpers should be be dependent on instance variables
def update_guess_message
  if @guess.correct == 1
    @right_or_wrong = " That is correct, you're doing great!"
  else
    @right_or_wrong = "Sorry, that is incorrect. The answer is #{@guess.card.answer}"
  end
end

#ZM: Model logic on the  round 
def guesses_from_current_round
  Guess.where(round: @guess.round)
end

#ZM: Model logic on the round
def cards_from_current_round
  Card.where(deck: @guess.deck)
end

#ZM: Model logic on the round
def cards_from_guesses(guesses)
  guesses.map {|guess| guess.card}
end