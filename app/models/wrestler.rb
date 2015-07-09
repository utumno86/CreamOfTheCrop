class Wrestler < ActiveRecord::Base
  belongs_to :user
  has_many :matches
  mount_uploader :image, ImageUploader

  def self.set_main_event_babyfaces(id)
    main_event_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 5)
  end

  def self.set_main_event_heels(id)
    main_event_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 5)
  end

  def self.set_high_card_babyfaces(id)
    high_card_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 4)
  end

  def self.set_high_card_heels(id)
    high_card_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 4)
  end

  def self.set_mid_card_babyfaces(id)
    mid_card_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 3)
  end

  def self.set_mid_card_heels(id)
    mid_card_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 3)
  end

  def self.set_low_card_babyfaces(id)
    low_card_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 2)
  end

  def self.set_low_card_heels(id)
    low_card_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 2)
  end

  def self.set_undercard_babyfaces(id)
    undercard_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 1)
  end

  def self.set_undercard_heels(id)
    undercard_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 1)
  end

end
