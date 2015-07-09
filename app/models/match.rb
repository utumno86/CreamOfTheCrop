class Match < ActiveRecord::Base
  belongs_to :babyface, class_name: "Wrestler"
  belongs_to :heel, class_name: "Wrestler"
  belongs_to :card

  def self.set_match(position,id)
    @mid_card_babyfaces = Wrestler.set_mid_card_babyfaces(id)
    @mid_card_heels = Wrestler.set_mid_card_heels(id)
    if position == 3
      match = Match.new
      match.heel = @mid_card_heels[Random.rand(0..(@mid_card_heels.length-1))]
      match.babyface = @mid_card_babyfaces[Random.rand(0..(@mid_card_babyfaces.length-1))]
      match.position = position
      match.save
    end
    return match
  end
end
