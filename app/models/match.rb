class Match < ActiveRecord::Base
  belongs_to :babyface, class_name: 'Wrestler'
  belongs_to :heel, class_name: 'Wrestler'
  belongs_to :card

  def self.set_match(position, id, num_matches)
    index = 0
    matches = []
    if position == 5
      @main_event_babyfaces = Wrestler.set_main_event_babyfaces(id, false).to_a
      @main_event_heels = Wrestler.set_main_event_heels(id, false).to_a
      while index < num_matches
        match = Match.new
        @main_event_heels.shuffle!
        match.heel = @main_event_heels.pop
        @main_event_babyfaces.shuffle!
        match.babyface = @main_event_babyfaces.pop
        match.position = position
        match.save
        matches << match
        index += 1
      end
    elsif position == 4
      @high_card_babyfaces = Wrestler.set_high_card_babyfaces(id, false).to_a
      @high_card_heels = Wrestler.set_high_card_heels(id, false).to_a
      while index < num_matches
        match = Match.new
        @high_card_heels.shuffle!
        match.heel = @high_card_heels.pop
        @high_card_babyfaces.shuffle!
        match.babyface = @high_card_babyfaces.pop
        match.position = position
        match.save
        matches << match
        index += 1
      end
    elsif position == 3
      @mid_card_babyfaces = Wrestler.set_mid_card_babyfaces(id, false).to_a
      @mid_card_heels = Wrestler.set_mid_card_heels(id, false).to_a
      while index < num_matches
        match = Match.new
        @mid_card_heels.shuffle!
        match.heel = @mid_card_heels.pop
        @mid_card_babyfaces.shuffle!
        match.babyface = @mid_card_babyfaces.pop
        match.position = position
        match.save
        matches << match
        index += 1
      end
    elsif position == 2
      @low_card_babyfaces = Wrestler.set_low_card_babyfaces(id, false).to_a
      @low_card_heels = Wrestler.set_low_card_heels(id, false).to_a
      while index < num_matches
        match = Match.new
        @low_card_heels.shuffle!
        match.heel = @low_card_heels.pop
        @low_card_babyfaces.shuffle!
        match.babyface = @low_card_babyfaces.pop
        match.position = position
        match.save
        matches << match
        index += 1
      end
    else
      @undercard_babyfaces = Wrestler.set_undercard_babyfaces(id, false).to_a
      @undercard_heels = Wrestler.set_undercard_heels(id, false).to_a
      while index < num_matches
        match = Match.new
        @undercard_heels.shuffle!
        match.heel = @undercard_heels.pop
        @undercard_babyfaces.shuffle!
        match.babyface = @undercard_babyfaces.pop
        match.position = position
        match.save
        matches << match
        index += 1
      end
    end
  end
end
