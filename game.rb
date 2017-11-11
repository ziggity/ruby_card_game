card_details = [{ace_of_spades: {numeric_value: 1, value: 11}},
                {king_of_spades: {numeric_value: 2, value: 10}},
                {queen_of_spades: {numeric_value: 3, value: 10}},
                {jack_of_spades: {numeric_value: 4, value: 10}},
                {spades_10: {numeric_value: 5, value: 10}},
                {spades_9: {numeric_value: 6, value: 9}},
                {spades_8: {numeric_value: 7, value: 8}},
                {spades_7: {numeric_value: 8, value: 7}},
                {spades_6: {numeric_value: 9, value: 6}},
                {spades_5: {numeric_value: 10, value: 5}},
                {spades_4: {numeric_value: 11, value: 4}},
                {spades_3: {numeric_value: 12, value: 3}},
                {spades_2: {numeric_value: 13, value: 2}},
                {ace_of_clubs: {numeric_value: 40, value: 11}},
                {king_of_clubs: {numeric_value: 41, value: 10}},
                {queen_of_clubs: {numeric_value: 42, value: 10}},
                {jack_of_clubs: {numeric_value: 43, value: 10}},
                {clubs_10: {numeric_value: 44, value: 10}},
                {clubs_9: {numeric_value: 45, value: 9}},
                {clubs_8: {numeric_value: 46, value: 8}},
                {clubs_7: {numeric_value: 47, value: 7}},
                {clubs_6: {numeric_value: 48, value: 6}},
                {clubs_5: {numeric_value: 49, value: 5}},
                {clubs_4: {numeric_value: 50, value: 4}},
                {clubs_3: {numeric_value: 51, value: 3}},
                {clubs_2: {numeric_value: 52, value: 2}},
                {ace_of_diamonds: {numeric_value: 14, value: 11}},
                {king_of_diamonds: {numeric_value: 15, value: 10}},
                {queen_of_diamonds: {numeric_value: 16, value: 10}},
                {jack_of_diamonds: {numeric_value: 17, value: 10}},
                {diamonds_10: {numeric_value: 18, value: 10}},
                {diamonds_9: {numeric_value: 19, value: 9}},
                {diamonds_8: {numeric_value: 20, value: 8}},
                {diamonds_7: {numeric_value: 21, value: 7}},
                {diamonds_6: {numeric_value: 22, value: 6}},
                {diamonds_5: {numeric_value: 23, value: 5}},
                {diamonds_4: {numeric_value: 24, value: 4}},
                {diamonds_3: {numeric_value: 25, value: 3}},
                {diamonds_2: {numeric_value: 26, value: 2}},
                {ace_of_spades: {numeric_value: 27, value: 11}},
                {king_of_hearts: {numeric_value: 28, value: 10}},
                {queen_of_hearts: {numeric_value: 29, value: 10}},
                {jack_of_hearts: {numeric_value: 30, value: 10}},
                {hearts_10: {numeric_value: 31, value: 10}},
                {hearts_9: {numeric_value: 32, value: 9}},
                {hearts_8: {numeric_value: 33, value: 8}},
                {hearts_7: {numeric_value: 34, value: 7}},
                {hearts_6: {numeric_value: 35, value: 6}},
                {hearts_5: {numeric_value: 36, value: 5}},
                {hearts_4: {numeric_value: 37, value: 4}},
                {hearts_3: {numeric_value: 38, value: 3}},
                {hearts_2: {numeric_value: 39, value: 2}}]

def get_card_type(card_details, numeric_value)
  card_details.each do |name|
    name.each do |key, value|
      new_value = value[:numeric_value]
      return key if new_value == numeric_value
    end
  end
end

def get_card_value(card_details, card)
  card_details.each do |name|
    name.each do |key, value|
      new_value = value[:numeric_value]
      return value[:value] if new_value == card
    end
  end
end

def hand_value(card_details, card1, card2)
  hand_value1 = get_card_value(card_details, card1)
  hand_value2 = get_card_value(card_details, card2)
  hand_value1 + hand_value2
end
deck = (1..52).to_a.shuffle!
print deck
puts get_card_type(card_details, 10)

player_card_1 = deck.pop
computer_card_1 = deck.pop
player_card_2 = deck.pop
computer_card_2 = deck.pop

puts "player is holding #{get_card_type(card_details, player_card_1)} and #{get_card_type(card_details, player_card_2)} and value is #{hand_value(card_details, player_card_1, player_card_2)}"
puts "player is holding #{get_card_type(card_details, computer_card_1)} and #{get_card_type(card_details, computer_card_2)} and value is #{hand_value(card_details, computer_card_2, computer_card_2)}"
