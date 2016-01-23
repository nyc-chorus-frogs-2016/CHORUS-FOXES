test_round_1 = Round.create(deck_id: 1, user_id: 1)
test_round_2 = Round.create(deck_id: 1, user_id: 1)
test_round_3 = Round.create(deck_id: 3, user_id: 3)

# user_1 = User.create(username: "user 1", password_hash: "password_1")
# user_2 = User.create(username: "user 2", password_hash: "password_2")
# user_3 = User.create(username: "dandersen2", password_hash: "password_3")
# user_4 = User.create(username: "miras", password_hash: "password_4")

deck_1 = Deck.create(name: "deck 1")
deck_2 = Deck.create(name: "deck 2")
deck_3 = Deck.create(name: "patriots")

guess_1 = Guess.create(round_id: 3, card_id: 3, correct: 1)
guess_2 = Guess.create(round_id: 3, card_id: 4, correct: 0)
guess_3 = Guess.create(round_id: 3, card_id: 5, correct: 1)
guess_4 = Guess.create(round_id: 3, card_id: 6, correct: 0)
guess_5 = Guess.create(round_id: 3, card_id: 7, correct: 1)
# guess_6 = Guess.create(round_id: 3, card_id: 1, correct: 1)
# guess_7 = Guess.create(round_id: 3, card_id: 1, correct: 1)

card_1 = Card.create(question: "what's up", answer: "hello", deck_id: 1)
card_2 = Card.create(question: "how areyou", answer: "fine", deck_id: 2)

card_3 = Card.create(question: "name the QB of the patriots", answer: "Brady", deck_id: 5)
card_4 = Card.create(question: "name the TE of the patriots", answer: "Gronkowski", deck_id: 5)
card_5 = Card.create(question: "name the RB of the patriots", answer: "Blount", deck_id: 5)
card_6 = Card.create(question: "name the WR of the patriots", answer: "Edelman", deck_id: 5)
card_7 = Card.create(question: "name the coach of the patriots", answer: "Belichick", deck_id: 5)

