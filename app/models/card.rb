class Card < ActiveRecord::Base
  has_many :matches

  def self.set_card(id)
    card = Card.create
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
    card.save
    return card
  end

end
