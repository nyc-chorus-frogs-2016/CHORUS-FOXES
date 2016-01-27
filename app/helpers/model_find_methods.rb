#ZM: I would pass in the id rather then dependent on the params
def find_card
  Card.find_by(id: params[:card_id])
end

#ZM: I would pass in the id rather then dependent on the params
def find_round
  Round.find_by(id: params[:round_id])
end

#ZM: I would pass in the id rather then dependent on the params
def find_guess
  Guess.find_by(id: params[:guess_id])
end

#ZM: I would pass in the id rather then dependent on the params
def find_deck
  Deck.find_by(id: params[:deck_id])
end