class CreateCertifs < ActiveRecord::Migration
  def change
    create_table :certifs do |t|
      t.integer :user_id
      t.string :certif_file_name
      t.string :certif_content_type
      t.integer :certif_file_size

      t.timestamps
    end
  end
end
