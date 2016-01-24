require 'pry'

get '/rounds/:id' do
  @round = Round.find_by(id: params[:id])

  counts = Hash.new 0
  @round_guesses = @round.guesses
  @round_cards = @round_guesses.map {|guess| guess.card }
  @round_cards.each { |num| counts[num] += 1 }
  @correct_on_first_guess = counts.values.select {|value| value == 1 }.count
  # binding.pry
  # @round_guesses. FIND ALL CARDS WHERE THERE IS ONLY ONE GUESS, OR ANY CARD THAT ONLY EXISTS IN THE ROUND.GUESSES ARRAY ONCE
  # @round.deck.cards.each do |card|
  #   card.guesses

# counts = Hash.new 0
# array = [1,1,1,2,2,3,4,4,13,5,5,9,5]
# array.each { |num| counts[num] += 1 }
# counts.values.select {|value| value == 1 }.count

  erb :'rounds/show'
end

post '/rounds' do
  @round = Round.create(deck_id: params[:deck_id], user_id: 1 )
  @deck = Deck.find_by(id: params[:deck_id])
  @card = @deck.cards.sample

  redirect "/rounds/#{@round.id}/cards/#{@card.id}"
end

