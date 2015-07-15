class Wrestler < ActiveRecord::Base
  belongs_to :user
  has_many :matches
  mount_uploader :image, ImageUploader

  def self.set_main_event_babyfaces(id, all)
    if  all
      Wrestler.where(:user_id => id, :alignment => true, :position => 5)
    else
      Wrestler.where(:user_id => id, :alignment => true, :position => 5, :injured => false)
    end
  end

  def self.set_main_event_heels(id, all)
    if all
      Wrestler.where(:user_id => id, :alignment => false, :position => 5)
    else
      Wrestler.where(:user_id => id, :alignment => false, :position => 5, :injured => false)
    end
  end

  def self.set_high_card_babyfaces(id, all)
    if all
      Wrestler.where(:user_id => id, :alignment => true, :position => 4)
    else
      Wrestler.where(:user_id => id, :alignment => true, :position => 4, :injured => false)
    end
  end

  def self.set_high_card_heels(id, all)
    if all
      Wrestler.where(:user_id => id, :alignment => false, :position => 4)
    else
      Wrestler.where(:user_id => id, :alignment => false, :position => 4, :injured => false)
    end
  end

  def self.set_mid_card_babyfaces(id, all)
    if all
      Wrestler.where(:user_id => id, :alignment => true, :position => 3)
    else
      Wrestler.where(:user_id => id, :alignment => true, :position => 3, :injured => false)
    end
  end

  def self.set_mid_card_heels(id, all)
    if all
      Wrestler.where(:user_id => id, :alignment => false, :position => 3)
    else
      Wrestler.where(:user_id => id, :alignment => false, :position => 3, :injured => false)
    end
  end

  def self.set_low_card_babyfaces(id, all)
    if all
      Wrestler.where(:user_id => id, :alignment => true, :position => 2)
    else
      Wrestler.where(:user_id => id, :alignment => true, :position => 2, :injured => false)
    end
  end

  def self.set_low_card_heels(id, all)
    if all
      Wrestler.where(:user_id => id, :alignment => false, :position => 2)
    else
      Wrestler.where(:user_id => id, :alignment => false, :position => 2, :injured => false)
    end
  end

  def self.set_undercard_babyfaces(id, all)
    if all
      Wrestler.where(:user_id => id, :alignment => true, :position => 1)
    else
      Wrestler.where(:user_id => id, :alignment => true, :position => 1, :injured => false)
    end
  end

  def self.set_undercard_heels(id, all)
    if all
      Wrestler.where(:user_id => id, :alignment => false, :position => 1)
    else
      Wrestler.where(:user_id => id, :alignment => false, :position => 1, :injured => false)
    end
  end
end
