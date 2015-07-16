# Card governs a list of matches set to be performed on any given night
class Card < ActiveRecord::Base
  has_many :matches

  def self.set_card(id)
    card = Card.new
    temp = Match.set_match(5, id, 1)
    temp.each do |match|
      card.matches << match
    end
    temp = Match.set_match(4, id, 2)
    temp.each do |match|
      card.matches << match
    end
    temp = Match.set_match(3, id, 2)
    temp.each do |match|
      card.matches << match
    end
    temp = Match.set_match(2, id, 2)
    temp.each do |match|
      card.matches << match
    end
    temp = Match.set_match(1, id, 1)
    temp.each do |match|
      card.matches << match
    end
    card.user_id = id
    card.save
    return card
  end

  def self.clear(id)
    cards = Card.where(:user_id => id)
    cards.each do |card|
      card.matches.each(&:delete)
      card.delete
    end
  end
end
