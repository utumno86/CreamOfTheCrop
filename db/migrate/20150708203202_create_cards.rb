class CreateCards < ActiveRecord::Migration
  def change
    create_table :cards do |t|
      t.references :match, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
