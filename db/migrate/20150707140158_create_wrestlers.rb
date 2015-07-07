class CreateWrestlers < ActiveRecord::Migration
  def change
    create_table :wrestlers do |t|
      t.string :name
      t.string :image
      t.boolean :alignment
      t.integer :position
      t.boolean :injured?

      t.timestamps null: false
    end
  end
end
