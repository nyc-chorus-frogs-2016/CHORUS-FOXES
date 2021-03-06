# test_round_1 = Round.create(deck_id: 1, user_id: 1)
# test_round_2 = Round.create(deck_id: 1, user_id: 1)
# test_round_3 = Round.create(deck_id: 3, user_id: 3)

deck_1 = Deck.create(name: "deck 1")
deck_2 = Deck.create(name: "deck 2")
deck_3 = Deck.create(name: "Patriots")
deck_4 = Deck.create(name: "U.S. State Capitals")
deck_5 = Deck.create(name: "Chemistry")
deck_6 = Deck.create(name: "Arithmetic")

# guess_1 = Guess.create(round_id: 3, card_id: 3, correct: 1)
# guess_2 = Guess.create(round_id: 3, card_id: 4, correct: 0)
# guess_3 = Guess.create(round_id: 3, card_id: 5, correct: 1)
# guess_4 = Guess.create(round_id: 3, card_id: 6, correct: 0)
# guess_5 = Guess.create(round_id: 3, card_id: 7, correct: 1)

card_1 = Card.create(question: "what's up", answer: "hello", deck_id: 1)
card_2 = Card.create(question: "how areyou", answer: "fine", deck_id: 2)

card_3 = Card.create(question: "name the QB of the patriots", answer: "brady", deck_id: 3)
card_4 = Card.create(question: "name the TE of the patriots", answer: "gronkowski", deck_id: 3)
card_5 = Card.create(question: "name the RB of the patriots", answer: "blount", deck_id: 3)
card_6 = Card.create(question: "name the WR of the patriots", answer: "edelman", deck_id: 3)
card_7 = Card.create(question: "name the coach of the patriots", answer: "belichick", deck_id: 3)

card_8 = Card.create(question: "What is the capital of Alaska", answer: "juneau", deck_id: 4)
card_9 = Card.create(question: "What is the capital of Connecticut", answer: "hartford", deck_id: 4)
card_10 = Card.create(question: "What is the capital of Kentucky", answer: "frankfort", deck_id: 4)
card_11 = Card.create(question: "What is the capital of California", answer: "sacramento", deck_id: 4)
card_12 = Card.create(question: "What is the capital of Texas", answer: "austin", deck_id: 4)
card_13 = Card.create(question: "What is the capital of Michigan", answer: "lansing", deck_id: 4)
card_14 = Card.create(question: "What is the capital of Georgia", answer: "atlanta", deck_id: 4)
card_15 = Card.create(question: "What is the capital of Maine", answer: "augusta", deck_id: 4)
card_16 = Card.create(question: "What is the capital of Massachusetts", answer: "boston", deck_id: 4)
card_17 = Card.create(question: "What is the capital of Pennsylvania", answer: "harrisburg", deck_id: 4)

card_18 = Card.create(question: "Name the element with the abbreviation 'Ar' on the periodic table.", answer: "argon", deck_id: 5)
card_19 = Card.create(question: "Name the element with the abbreviation 'O' on the periodic table.", answer: "oxygen", deck_id: 5)
card_20 = Card.create(question: "Name the element with the abbreviation 'He' on the periodic table.", answer: "helium", deck_id: 5)
card_21 = Card.create(question: "Name the element with the abbreviation 'K' on the periodic table.", answer: "potassium", deck_id: 5)
card_22 = Card.create(question: "Name the element with the abbreviation 'Na' on the periodic table.", answer: "sodium", deck_id: 5)
card_23 = Card.create(question: "Name the element with the abbreviation 'Hg' on the periodic table.", answer: "mercury", deck_id: 5)
card_24 = Card.create(question: "Name the element with the abbreviation 'P' on the periodic table.", answer: "phosphorus", deck_id: 5)
card_25 = Card.create(question: "Write the chemical formula for water.", answer: "h2o", deck_id: 5)
card_26 = Card.create(question: "Write the chemical formula for table salt.", answer: "nacl", deck_id: 5)
card_27 = Card.create(question: "Write the chemical formula for diamond.", answer: "c", deck_id: 5)
card_28 = Card.create(question: "Write the chemical formula for dry ice.", answer: "co2", deck_id: 5)
card_29 = Card.create(question: "Write the chemical formula for Alcohol(ethanol).", answer: "c2h6o", deck_id: 5)

card_30 = Card.create(question: "What is 1 + 9/3 ?", answer: "4", deck_id: 6)
card_31 = Card.create(question: "What is (6*3) + 5 ?", answer: "23", deck_id: 6)
card_32 = Card.create(question: "What is 32 * 3 ?", answer: "96", deck_id: 6)
card_33 = Card.create(question: "What is 12 + 11*2 ?", answer: "34", deck_id: 6)
card_34 = Card.create(question: "What is 58/2 ?", answer: "29", deck_id: 6)
card_35 = Card.create(question: "What is 26 + 17?", answer: "43", deck_id: 6)

