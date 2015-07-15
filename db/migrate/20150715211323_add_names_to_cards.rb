class AddNamesToCards < ActiveRecord::Migration
  def change
    add_column :cards, :date, :string
    add_column :cards, :frequency, :string
    add_column :cards, :names, :text, array => true, default => []
  end
end
