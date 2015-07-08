class CreateMatches < ActiveRecord::Migration
  def change
    create_table :matches do |t|
      t.references :babyface, index: true
      t.references :heel, index: true
      t.references :card, index: true
      t.integer :position

      t.timestamps null: false
    end
  end
end
