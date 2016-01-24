class Guess < ActiveRecord::Base
  belongs_to :card
  belongs_to :round
  has_one :deck, through: :card
end
