class Match < ActiveRecord::Base
  belongs_to :babyface, class_name: "Wrestler"
  belongs_to :heel, class_name: "Wrestler"
  belongs_to :card

  def self.set_match(position,id)
    @main_event_babyfaces, @main_event_heels, @high_card_babyfaces, @high_card_heels, @mid_card_babyfaces,
      @mid_card_heels, @low_card_babyfaces, @low_card_heels, @undercard_babyfaces, @undercard_heels = Wrestler.sort!(id)
    if position == 3
      match = Match.new
      match.heel = @mid_card_heels[Random.rand(1..@mid_card_heels.length)]
      match.babyface = @mid_card_babyfaces[Random.rand(1..@mid_card_babyfaces.length)]
      match.position = position
      match.save
    end
    return match
  end
end
