get '/rounds/:round_id' do
  @round = find_round

  counts = Hash.new 0
  @round_guesses = @round.guesses
  @round_cards = @round_guesses.map {|guess| guess.card }
  @round_cards.each { |num| counts[num] += 1 }
  @correct_on_first_guess = counts.values.select {|value| value == 1 }.count
  erb :'rounds/show'
end

post '/rounds' do
  @round = Round.create(deck_id: params[:deck_id], user_id: current_user_id)
  @card = find_deck.cards.sample
  redirect "/rounds/#{@round.id}/cards/#{@card.id}"
end