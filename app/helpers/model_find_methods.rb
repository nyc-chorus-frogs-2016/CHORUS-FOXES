def find_card
  Card.find_by(id: params[:card_id])
end

def find_round
  Round.find_by(id: params[:round_id])
end

def find_guess
  Guess.find_by(id: params[:guess_id])
end

def find_guess
  Deck.find_by(id: params[:deck_id])
end