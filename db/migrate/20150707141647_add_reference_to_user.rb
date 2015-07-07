class AddReferenceToUser < ActiveRecord::Migration
  def change
    add_reference  :wrestlers, :user, index: true, foreign_key: true
  end
end
