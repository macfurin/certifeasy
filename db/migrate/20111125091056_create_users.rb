class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :firstname
      t.string :lastname
      t.date :dob
      t.string :street
      t.string :zipcode
      t.string :country
      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
