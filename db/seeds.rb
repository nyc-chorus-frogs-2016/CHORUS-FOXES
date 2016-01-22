test_round_1 = Round.create(deck_id: 1, user_id: 1)
test_round_2 = Round.create(deck_id: 1, user_id: 1)

user_1 = User.create(username: "user 1", password_hash: "password_1")
user_2 = User.create(username: "user 2", password_hash: "password_2")

deck_1 = Deck.create(name: "deck 1")
deck_2 = Deck.create(name: "deck 2")

guess_1 = Guess.create(round_id: 1, card_id: 1, correct: 1)
guess_2 = Guess.create(round_id: 1, card_id: 1, correct: 0)

card_1 = Card.create(question: "what's up", answer: "hello", deck_id: 1)
card_2 = Card.create(question: "how areyou", answer: "fine", deck_id: 2)
