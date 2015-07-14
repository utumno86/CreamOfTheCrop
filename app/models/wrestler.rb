class Wrestler < ActiveRecord::Base
  belongs_to :user
  has_many :matches
  mount_uploader :image, ImageUploader

  def self.set_main_event_babyfaces(id, all)
    if  all
      main_event_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 5)
    else
      main_event_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 5, :injured => false)
    end
  end

  def self.set_main_event_heels(id, all)
   if all
     main_event_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 5)
   else
     main_event_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 5, :injured => false)
   end
  end

  def self.set_high_card_babyfaces(id, all)
    if all
      high_card_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 4)
    else
      high_card_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 4, :injured => false)
    end
  end

  def self.set_high_card_heels(id, all)
   if all
     high_card_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 4)
   else
     high_card_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 4, :injured => false)
   end
  end

  def self.set_mid_card_babyfaces(id, all)
    if all
      mid_card_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 3)
    else
      mid_card_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 3, :injured => false)
    end
  end

  def self.set_mid_card_heels(id, all)
    if all
      mid_card_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 3)
    else
      mid_card_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 3, :injured => false)
    end
  end

  def self.set_low_card_babyfaces(id, all)
    if all
      low_card_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 2)
    else
      low_card_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 2, :injured => false)
    end
  end

  def self.set_low_card_heels(id, all)
    if all
      low_card_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 2)
    else
      low_card_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 2, :injured => false)
    end
  end

  def self.set_undercard_babyfaces(id, all)
    if all
      undercard_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 1)
    else
      undercard_babyfaces = Wrestler.where(:user_id => id, :alignment => true, :position => 1, :injured => false)
    end
  end

  def self.set_undercard_heels(id, all)
    if all
      undercard_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 1)
    else
      undercard_heels = Wrestler.where(:user_id => id, :alignment => false, :position => 1, :injured => false)
    end
  end

end
