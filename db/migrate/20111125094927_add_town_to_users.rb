class AddTownToUsers < ActiveRecord::Migration
  def self.up
    change_table(:users) do |t|
      t.string :town
      t.float :latitude
      t.float :longitude
      t.boolean :gmaps
    end
  end

  def self.down
    change_table(:users) do |t|
      t.remove :town, :latitude, :longitude, :gmaps
    end
  end
end
