values = %w(2 3 4 5 6 7 8 9 10 J Q K A)
suits = %w(C D H S)
player = []
dealer = []
deck = []
player_total = 0
dealer_total = 0
VALUES = { '2': 2, '3': 3, '4': 4, '5': 5, '6': 6, '7': 7, '8': 8, '9': 9,
           '10': 10, 'J': 10, 'Q': 10, 'K': 10, 'A': 11 }

def initialize_deck(deck, suits, values)
  suits.each do |suit|
    values.each do |value|
      deck << [suit, value]
    end
  end
end

def player_deal_initial_hand(deck, player)
  player << deck.sample(2)
  deck.delete_if { |element| player[0][0] == element }
  deck.delete_if { |element| player[0][1] == element }
end

def dealer_deal_initial_hand(deck, dealer)
  dealer << deck.sample(2)
  deck.delete_if { |element| dealer[0][0] == element }
  deck.delete_if { |element| dealer[0][1] == element }
end

def dealer_turn(dealer, _dealer_tot)
  dealer_total_score = VALUES.values_at(dealer[0][1][1].to_sym,
                                        dealer[0][0][1].to_sym).sum
end

def player_turn(player, _player_tot)
  player_total_score = VALUES.values_at(player[0][1][1].to_sym,
                                        player[0][0][1].to_sym).sum
  player_total_score
end

def action(cards)
  values = cards.map { |card| card[1] }

  sum = 0
  values.each do |value|
    sum += if value == 'A'
             11
           elsif value.to_i == 0 # (j, q, k)
             10
           else
             value.to_i
           end
  end

  # correct for Aces
  values.select { |value| value == "A" }.count.times do
    sum -= 10 if sum > 21
  end

  sum
end

def busted?(player_score)
  true if player_score > 21
end

initialize_deck(deck, suits, values)
player_deal_initial_hand(deck, player)
dealer_deal_initial_hand(deck, dealer)
dealer_score = dealer_turn(dealer, dealer_total)
player_score = player_turn(player, player_total)
answer = nil
loop do
  puts "Player Total: #{player_score}"
  puts "Dealer Showing Total: #{dealer_score -
    VALUES.values_at(dealer.flatten(1)[0][1].to_sym)[0]}"
  break if busted?(player_score)
  puts "hit or stay? "
  answer = gets.chomp
  break if answer == 'stay'
  if answer == 'hit'
    player << deck.sample(1)
    player_score = action(player.flatten(1))
  end
end

loop do
  break if busted?(dealer_score)
  while dealer_score < 17
    dealer << deck.sample(1)
    dealer_score = action(dealer.flatten(1))
  end
  break
end

p player
p player.flatten(1)
p dealer.flatten(1)
# p(deck)
# p deck.size
p player_score
p dealer_score
