class RenameInjured < ActiveRecord::Migration
  def change
    rename_column :wrestlers, :injured?, :injured
  end
end
