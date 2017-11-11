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
                {spades_2: {numeric_value: 13, value: 2}}]

def get_card_value()

end

deck = (1..13).to_a.shuffle!
print deck
puts card_details
puts " "
