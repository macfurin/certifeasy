class AddCertifUpdatedAtColumnToCertif < ActiveRecord::Migration
  def self.up
    add_column :certifs, :certif_updated_at,   :datetime
  end

  def self.down
    remove_column :certifs, :certif_updated_at
  end
end
