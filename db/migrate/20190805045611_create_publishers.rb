class CreatePublishers < ActiveRecord::Migration[5.2]
  def change
    create_table :publishers do |t|
      t.column :name, :string
      t.column :description, :text
      t.column :created_at, :timestamp
    end
  end

  def self.down
    drop_table :books
  end
end
