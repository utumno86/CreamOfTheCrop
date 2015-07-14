class ChangeUserInjuredColumn < ActiveRecord::Migration
  def change
    change_column :wrestlers, :injured, :boolean, :default => false
  end
end
