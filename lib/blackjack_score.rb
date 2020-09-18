# blackjack_score.rb

VALID_CARDS = [2, 3, 4, 5, 6, 7, 8, 9, 10, 'Jack', 'Queen', 'King', 'Ace']

def blackjack_score(hand)
  score = 0
  face_cards = %w[Jack Queen King]
  numeric_cards = [2, 3, 4, 5, 6, 7, 8, 9, 10]
  ace = "Ace"

  ace_value = 1
  hand.each do |card|
    if face_cards.include?(card)
      ace_value = 11
    end
  end

  hand.each do |card|
    value = 0
    if card == ace
      value = ace_value
    end

    if face_cards.include?(card)
      value = 10
    end

    if numeric_cards.include?(card)
      value = card
      p "card here"
    end

    score += value
  end



  return score
end

