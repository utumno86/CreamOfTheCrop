class Wrestler < ActiveRecord::Base
  belongs_to :user
  has_many :matches
  mount_uploader :image, ImageUploader

  def self.sort!(id)
    main_event_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 5)
    main_event_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 5)
    high_card_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 4)
    high_card_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 4)
    mid_card_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 3)
    mid_card_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 3)
    low_card_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 2)
    low_card_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 2)
    undercard_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 1)
    undercard_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 1)
    return [main_event_babyfaces, main_event_heels, high_card_babyfaces, high_card_heels, mid_card_babyfaces,
            mid_card_heels, low_card_babyfaces, low_card_heels, undercard_babyfaces, undercard_heels]

  end
end
