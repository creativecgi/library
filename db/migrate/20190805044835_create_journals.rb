class CreateJournals < ActiveRecord::Migration[5.2]
  def change
    create_table :journals do |t|
      t.column :title, :string, :limit => 32, :null => false
      t.column :issn, :string, :limit => 10, :null => false
      t.column :subject_id, :integer
      t.column :publisher_id, :integer
      t.column :description, :text
      t.column :created_at, :timestamp
    end
  end

  def self.down
    drop_table :books
  end
end
