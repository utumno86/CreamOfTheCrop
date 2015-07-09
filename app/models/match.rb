class Match < ActiveRecord::Base
  belongs_to :babyface, class_name: "Wrestler"
  belongs_to :heel, class_name: "Wrestler"
  belongs_to :card

  def self.set_match(position,id, num_matches)
    index = 0
    matches = []
    if position == 5
      @main_event_babyfaces = Wrestler.set_main_event_babyfaces(id)
      @main_event_heels = Wrestler.set_main_event_heels(id)
      while (index < num_matches)
        match = Match.new
        match.heel = @main_event_heels[Random.rand(0..(@main_event_heels.length-1))]
        match.babyface = @main_event_babyfaces[Random.rand(0..(@main_event_babyfaces.length-1))]
        match.position = position
        match.save
        matches << match
        index += 1
      end
    elsif position == 4
      @high_card_babyfaces = Wrestler.set_high_card_babyfaces(id)
      @high_card_heels = Wrestler.set_high_card_heels(id)
      while (index < num_matches)
        match = Match.new
        match.heel = @high_card_heels[Random.rand(0..(@high_card_heels.length-1))]
        match.babyface = @high_card_babyfaces[Random.rand(0..(@high_card_babyfaces.length-1))]
        match.position = position
        match.save
        matches << match
        index += 1
      end
    elsif position == 3
      @mid_card_babyfaces = Wrestler.set_mid_card_babyfaces(id)
      @mid_card_heels = Wrestler.set_mid_card_heels(id)
      while (index < num_matches)
        match = Match.new
        match.heel = @mid_card_heels[Random.rand(0..(@mid_card_heels.length-1))]
        match.babyface = @mid_card_babyfaces[Random.rand(0..(@mid_card_babyfaces.length-1))]
        match.position = position
        match.save
        matches << match
        index += 1
      end
    elsif position == 2
      @low_card_babyfaces = Wrestler.set_low_card_babyfaces(id)
      @low_card_heels = Wrestler.set_low_card_heels(id)
      while (index < num_matches)
        match = Match.new
        match.heel = @low_card_heels[Random.rand(0..(@low_card_heels.length-1))]
        match.babyface = @low_card_babyfaces[Random.rand(0..(@low_card_babyfaces.length-1))]
        match.position = position
        match.save
        matches << match
        index += 1
      end
    else
      @undercard_babyfaces = Wrestler.set_undercard_babyfaces(id)
      @undercard_heels = Wrestler.set_undercard_heels(id)
      while (index < num_matches)
        match = Match.new
        match.heel = @undercard_heels[Random.rand(0..(@undercard_heels.length-1))]
        match.babyface = @undercard_babyfaces[Random.rand(0..(@undercard_babyfaces.length-1))]
        match.position = position
        match.save
        matches << match
        index += 1
      end
    end
    return matches
  end
end
