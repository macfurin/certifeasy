class AddValidToCertif < ActiveRecord::Migration
  def change
    add_column :certifs, :valid, :boolean
  end
end
