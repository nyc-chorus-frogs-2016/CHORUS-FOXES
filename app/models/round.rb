class Round < ActiveRecord::Base

  has_many :guesses

  belongs_to :deck
  belongs_to :user

  #round.deck.cards.sample --> returns one random card

  # round.guesses --> remove the cards where the card_id.correct? == true
       # ==> lists the cards remaining to be guessed



end


